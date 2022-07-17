#!/bin/bash
if [[ -z ${DST_DIR// } ]]; then
	#export DST_DIR="/mnt/backup"
	export DST_DIR="${HOME}/backup"
else
	export DST_DIR=`realpath "${DST_DIR}"`
fi
export BACKUP_DIR="${DST_DIR}/laptop_`date +%F`"
echo "backup_dir: ${BACKUP_DIR}"
mkdir -p "${BACKUP_DIR}/"

cd "${HOME}/"

# Private keys.
echo "~/.ssh"
#time rsync -r --info=progress2 ".gnupg" "${BACKUP_DIR}/"
time rsync -r --info=progress2 ".ssh" "${BACKUP_DIR}/"

# Wireless configs.
echo "~/.wireless"
time rsync -r --info=progress2 ".wireless" "${BACKUP_DIR}/"

# Virtual box.
#mkdir -p "${BACKUP_DIR}/.config/"
#echo "~/.config/VirtualBox"
#time rsync -r --info=progress2 ".config/VirtualBox" "${BACKUP_DIR}/.config/"
#echo "~/VirtualBox VMs"
#time rsync -r --info=progress2 "VirtualBox VMs" "${BACKUP_DIR}/"

# Scripts.
echo "~/bin"
time rsync -r --info=progress2 "bin" "${BACKUP_DIR}/"

# Desktop.
echo "~/Desktop"
time rsync -r --info=progress2 "Desktop" "${BACKUP_DIR}/"

# Downloads.
echo "~/dl"
time rsync -r --info=progress2 "dl" "${BACKUP_DIR}/"

# Downloads.
echo "~/Downloads"
time rsync -r --info=progress2 "Downloads" "${BACKUP_DIR}/"

# Downloads.
echo "~/idapro-7.5.2"
time rsync -r --info=progress2 "idapro-7.5.2" "${BACKUP_DIR}/"

# life.
echo "~/life"
time rsync -r --info=progress2 "life" "${BACKUP_DIR}/"

# Wallpapers.
echo "~/resources"
time rsync -r --info=progress2 "resources" "${BACKUP_DIR}/"

# share.
echo "~/_share_"
time rsync -r --info=progress2 "_share_" "${BACKUP_DIR}/"

echo "BACKUP DONE"
