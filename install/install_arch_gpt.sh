#!/bin/bash

# Choose disk to install on.
fdisk -l | grep "Disk /dev"
echo ""
echo "Please choose disk to install on (e.g. sda or nvme0n1)."
read DISK
echo "Please choose a partition prefix (e.g. 'p' (for e.g. nvme0n1p1) or blank (for e.g. sda1))."
read PART_PREFIX

# Create partions with MBR partition table.
#
#    g           - new empty GPT partition table
#    n +100M y   - new partition 100M /boot/efi
#    n +250M y   - new partition 250M /boot
#    n y         - new partition 100% /
#    w           - write changes and exit
echo "Partitioning disk."
echo -e "g\nn\n\n\n+100M\ny\nt\n1\nn\n\n\n+250M\nn\n\n\n\ny\nw\n" | fdisk /dev/${DISK}

# Format partitions.
echo "Formatting partitions."
mkfs.vfat -F32 /dev/${DISK}${PART_PREFIX}1
mkfs.ext2 /dev/${DISK}${PART_PREFIX}2

# Create encrypted partitions.
echo "Creating encrypted partitions."
cryptsetup -c aes-xts-plain64 -y --use-random luksFormat /dev/${DISK}${PART_PREFIX}3
cryptsetup luksOpen /dev/${DISK}${PART_PREFIX}3 luks
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
mkdir /mnt/boot
mount /dev/${DISK}${PART_PREFIX}2 /mnt/boot
mkdir /mnt/boot/efi
mount /dev/${DISK}${PART_PREFIX}1 /mnt/boot/efi

# Install packages.
echo "Installing packages."
pacstrap /mnt base base-devel linux linux-firmware mkinitcpio lvm2 grub-efi-x86_64 efibootmgr nano wpa_supplicant dialog netctl net-tools dhcpcd git openssh wget go acpi

# Generate /etc/fstab.
echo "Generating /etc/fstab"
genfstab -pU /mnt >> /mnt/etc/fstab
# Make /tmp a ramfs.
echo -e "tmpfs\t/tmp\ttmpfs\tdefaults,noatime,mode=1777\t0\t0" >> /mnt/etc/fstab

# Copy chroot install script.
echo "Copying chroot install script to chroot."
cp install_arch_chroot_gpt.sh /mnt/root

# Enter the new system.
echo "Entering chroot."
arch-chroot /mnt /bin/bash -c "/root/install_arch_chroot_gpt.sh "

rm /mnt/root/install_arch_chroot_gpt.sh

# Exit chroot, unmount and reboot/
#exit

#umount -R /mnt
#swapoff -a

#reboot
