#!/bin/bash

# Choose whether to use EFI boot loader.
echo "Use EFI for boot loader ('y' or 'n')?"
read USE_EFI
if [ ${USE_EFI} == "y" ]; then
	echo "Using EFI boot loader (GPT)."
else
	if [ ${USE_EFI} == "n" ]; then
		echo "Using old school boot loader (MBR)."
	else
		echo "Invalid choice '${USE_EFI}'. Please answer 'y' or 'n'."
		exit 1
	fi
fi

# Choose disk to install on.
fdisk -l | grep "Disk /dev"
echo ""
echo "Please choose disk to install on (e.g. sda or nvme0n1)."
read DISK
echo "Please choose a partition prefix (e.g. 'p' (for e.g. nvme0n1p1) or blank (for e.g. sda1))."
read PART_PREFIX

# Partition disk.
echo "Partitioning disk."
if [ ${USE_EFI} == "y" ]; then
	# Create partions with MBR partition table.
	#
	#    g           - new empty GPT partition table
	#    n +100M y   - new partition 100M /boot/efi
	#    n +250M y   - new partition 250M /boot
	#    n y         - new partition 100% /
	#    w           - write changes and exit
	echo -e "g\nn\n\n\n+100M\ny\nt\n1\nn\n\n\n+250M\nn\n\n\n\ny\nw\n" | fdisk /dev/${DISK}
else
	# Create partions with MBR partition table.
	#
	#    o           - new empty DOS partition table
	#    n p +250M y - new partition 250M /boot
	#    a 1         - toggle bootable flag
	#    n p y       - new partition 100% /
	#    w           - write changes and exit
	echo -e "o\nn\np\n\n\n+250M\ny\na\n1\nn\np\n\n\n\ny\nw\n" | fdisk /dev/${DISK}
fi

# Format partitions.
echo "Formatting partitions."
if [ ${USE_EFI} == "y" ]; then
	mkfs.vfat -F32 /dev/${DISK}${PART_PREFIX}1
	mkfs.ext2 /dev/${DISK}${PART_PREFIX}2
else
	mkfs.ext2 /dev/${DISK}${PART_PREFIX}1
fi

# Create encrypted partitions.
echo "Creating encrypted partitions."
if [ ${USE_EFI} == "y" ]; then
	cryptsetup -c aes-xts-plain64 -y --use-random luksFormat /dev/${DISK}${PART_PREFIX}3
	cryptsetup luksOpen /dev/${DISK}${PART_PREFIX}3 luks
else
	cryptsetup -c aes-xts-plain64 -y --use-random luksFormat /dev/${DISK}${PART_PREFIX}2
	cryptsetup luksOpen /dev/${DISK}${PART_PREFIX}2 luks
fi
pvcreate /dev/mapper/luks
vgcreate vg0 /dev/mapper/luks
lvcreate --size 8G vg0 --name swap
lvcreate -l +100%FREE vg0 --name root
mkfs.ext4 /dev/mapper/vg0-root
mkswap /dev/mapper/vg0-swap

# Mount the filesystems.
echo "Mounting filesystems."
mount /dev/mapper/vg0-root /mnt
swapon /dev/mapper/vg0-swap
if [ ${USE_EFI} == "y" ]; then
	mkdir /mnt/boot
	mount /dev/${DISK}${PART_PREFIX}2 /mnt/boot
	mkdir /mnt/boot/efi
	mount /dev/${DISK}${PART_PREFIX}1 /mnt/boot/efi
else
	mkdir /mnt/boot
	mount /dev/${DISK}${PART_PREFIX}1 /mnt/boot
fi

# Install packages.
echo "Installing packages."
PACKAGES="base base-devel linux linux-firmware mkinitcpio lvm2 nano wpa_supplicant dialog netctl net-tools dhcpcd git openssh wget go acpi"
if [ ${USE_EFI} == "y" ]; then
	PACKAGES+=" grub-efi-x86_64 efibootmgr"
else
	PACKAGES+=" grub"
fi
pacstrap /mnt ${PACKAGES}

# Generate /etc/fstab.
echo "Generating /etc/fstab"
genfstab -pU /mnt >> /mnt/etc/fstab
# Make /tmp a ramfs.
echo -e "tmpfs\t/tmp\ttmpfs\tdefaults,noatime,mode=1777\t0\t0" >> /mnt/etc/fstab

# Copy chroot install script.
echo "Copying chroot install script to chroot."
cp install_arch_chroot.sh /mnt/root

# Enter the new system.
echo "Entering chroot."
arch-chroot /mnt /bin/bash -c "/root/install_arch_chroot.sh "

rm /mnt/root/install_arch_chroot.sh

# Exit chroot, unmount and reboot/
#exit

#umount -R /mnt
#swapoff -a

#reboot
