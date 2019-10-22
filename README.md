# Arch

As part of an ongoing effort to reduce unsolicited attachment to material assets and hardware, I've decided to create this project with the aim of making it absolutely trivial to clone my laptop's working environment and perform backups.

## Installation

[Install Arch Linux](https://gist.github.com/mewmew/b139b36fb6e41a7d5a65).

```shell
git clone https://github.com/mewmew/arch
# Copy configuration files.
cp -T -r arch/config/ ${HOME}/
cp -r arch/bin ${HOME}/
# Restart shell to load profile.
/bin/bash
# Install programs.
${HOME}/install/fresh_install.sh
```

## Backup

```shell
DST_DIR=/mnt/backup ${HOME}/backup.sh
```
