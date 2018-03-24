#!/bin/bash

# Install sar.
echo "Installing sar."
go get github.com/mewkiz/cmd/sar
export PATH=$HOME/go/bin:$PATH

# Update /etc/fstab
#
# * Change to relatime to noatime for all non-boot partitions.
echo "Updating /etc/fstab"
sar -i "([ \t]+/[ \t]+ext4[ \t]+rw),relatime," "\${1},noatime," /etc/fstab

# Setup system clock.
echo "Configuring system clock."
ln -s /usr/share/zoneinfo/Europe/Stockholm /etc/localtime
hwclock --systohc --utc

# Set hostname.
echo "Setting hostname."
echo x61s > /etc/hostname

# Update locale
echo "Updating locale."
echo "LANG=en_US.UTF-8" > /etc/locale.conf
echo "LANGUAGE=en_US" >> /etc/locale.conf
echo "LC_ALL=C" >> /etc/locale.conf
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
locale-gen

# Set root password.
echo "Setting root password."
passwd

# Add user.
echo "Adding user."
useradd -m -g users -G wheel,storage,power,audio u
passwd u

# Give wheel users sudo permissions.
echo "Giving wheel users sudo permissions."
sar -i "[\n]# (%wheel ALL=[(]ALL[)] ALL[\n])" "\n\${1}" /etc/sudoers

# Update /etc/mkinitcpio.conf.
#
# * Add 'ext4' to MODULES.
# * Add 'encrypt' and 'lvm2' to HOOKS before filesystems.
echo "Updating /etc/mkinitcpio.conf"
sar -i "[\n]MODULES=[(][)]" "\nMODULES=(ext4)" /etc/mkinitcpio.conf
sar -i "([\n]HOOKS=[(][^\n]*block) filesystems" "\${1} encrypt lvm2 filesystems" /etc/mkinitcpio.conf

# Regenerate initrd image.
mkinitcpio -p linux

# Install grub.
grub-install --recheck /dev/sda

# Update /etc/default/grub.
#
# * Add 'cryptdevice=/dev/sdX3:luks:allow-discards' to GRUB_CMDLINE_LINUX.
sar -i '[\n]GRUB_CMDLINE_LINUX=\"\"' '\nGRUB_CMDLINE_LINUX=\"cryptdevice=/dev/sda2:luks:allow-discards\"' /etc/default/grub
grub-mkconfig -o /boot/grub/grub.cfg
