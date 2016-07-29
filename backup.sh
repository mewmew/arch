#!/bin/bash
if [[ -z ${DST_DIR// } ]]; then
	#export DST_DIR="/mnt/backup"
	export DST_DIR="${HOME}/backup"
fi
export BACKUP_DIR="${DST_DIR}/laptop_`date +%F`"
mkdir -p "${BACKUP_DIR}/"

# Private keys.
echo "~/.ssh"
#rsync -r --delete-before --info=progress2 ".gnupg" "${BACKUP_DIR}/"
rsync -r --delete-before --info=progress2 ".ssh" "${BACKUP_DIR}/"

# Virtual box.
#mkdir -p "${BACKUP_DIR}/.config/"
#echo "~/.config/VirtualBox"
#rsync -r --delete-before --info=progress2 ".config/VirtualBox" "${BACKUP_DIR}/.config/"
#echo "~/VirtualBox VMs"
#rsync -r --delete-before --info=progress2 "VirtualBox VMs" "${BACKUP_DIR}/"

# Scripts.
echo "~/bin"
rsync -r --delete-before --info=progress2 "bin" "${BACKUP_DIR}/"

# Desktop.
echo "~/Desktop"
rsync -r --delete-before --info=progress2 "Desktop" "${BACKUP_DIR}/"

# Downloads.
echo "~/dl"
rsync -r --delete-before --info=progress2 "dl" "${BACKUP_DIR}/"

# Wallpapers.
echo "~/resources"
rsync -r --delete-before --info=progress2 "resources" "${BACKUP_DIR}/"
