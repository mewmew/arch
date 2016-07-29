#!/bin/bash
#export DST_DIR=/mnt/backup/laptop_`date +%F`
export DST_DIR="${HOME}/backup/laptop_`date +%F`"
mkdir -p "${DST_DIR}/"

# Private keys.
echo "~/.ssh"
#rsync -r --delete-before --info=progress2 ".gnupg" "${DST_DIR}/"
rsync -r --delete-before --info=progress2 ".ssh" "${DST_DIR}/"

# Virtual box.
#mkdir -p "${DST_DIR}/.config/"
#echo "~/.config/VirtualBox"
#rsync -r --delete-before --info=progress2 ".config/VirtualBox" "${DST_DIR}/.config/"
#echo "~/VirtualBox VMs"
#rsync -r --delete-before --info=progress2 "VirtualBox VMs" "${DST_DIR}/"

# Scripts.
echo "~/bin"
rsync -r --delete-before --info=progress2 "bin" "${DST_DIR}/"

# Desktop.
echo "~/Desktop"
rsync -r --delete-before --info=progress2 "Desktop" "${DST_DIR}/"

# Downloads.
echo "~/dl"
rsync -r --delete-before --info=progress2 "dl" "${DST_DIR}/"

# Wallpapers.
echo "~/resources"
rsync -r --delete-before --info=progress2 "resources" "${DST_DIR}/"
