# Arch

As part of an ongoing effort to reduce unsolicited attachment to material assets and hardware, I've decided to create this project with the aim of making it absolutely trivial to clone my laptop's working environment and perform backups.

## Installation

[Install Arch Linux](https://gist.github.com/mewmew/b139b36fb6e41a7d5a65).

```shell
git clone https://github.com/mewmew/arch
# Copy configuration files.
cp -r arch/* ${HOME}/
# Install programs.
${HOME}/install/install.sh
```

## Backup

```shell
DST_DIR=/mnt/backup ${HOME}/backup.sh
```

## Public domain

The source code and any original content of this repository is hereby released into the [public domain].

[public domain]: https://creativecommons.org/publicdomain/zero/1.0/
