#!/bin/bash
wget https://aur.archlinux.org/cgit/aur.git/snapshot/packer-color.tar.gz
tar -xzf packer-color.tar.gz
rm -f packer-color.tar.gz
cd packer-color/
sudo pacman -Sy jshon expac
makepkg
sudo pacman -U packer-color-*.pkg.tar.xz
sudo ln -s /usr/bin/packer-color /usr/bin/packer
cd ..
rm -rf packer-color/
