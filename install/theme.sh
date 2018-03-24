#!/bin/bash

sudo pacman -Sy \
	adobe-source-code-pro-fonts \
	elementary-icon-theme \
	gtk-engine-murrine \
	lxappearance \
	ttf-hack \

packer -S \
	vertex-themes-git \

# infinality bundle replacement.
sudo ln -s /etc/fonts/conf.avail/11-lcdfilter-default.conf /etc/fonts/conf.d
sudo ln -s /etc/fonts/conf.avail/10-sub-pixel-rgb.conf /etc/fonts/conf.d
wget -O /tmp/local.conf https://gist.githubusercontent.com/cryzed/4f64bb79e80d619866ee0b18ba2d32fc/raw/bd073b52365393f9f0718425271825fc27b218f7/local.conf
sudo mv /tmp/local.conf /etc/fonts/local.conf

packer -S \
	fonts-meta-extended-lt \
