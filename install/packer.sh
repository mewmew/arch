#!/bin/bash

# Install packer
sudo pacman -Sy wget jshon expac
mkdir /tmp/foo
cd /tmp/foo
wget https://aur.archlinux.org/cgit/aur.git/snapshot/packer-color.tar.gz
tar -xzf packer-color.tar.gz
cd packer-color/
makepkg
sudo pacman -U packer-color-*.pkg.tar.zst
sudo ln -s /usr/bin/packer-color /usr/bin/packer
rm -rf /tmp/foo
