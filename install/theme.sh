#!/bin/bash

sudo bash -c "cat >> /etc/pacman.conf <<'_EOF'

[infinality-bundle]
Server = http://bohoomil.com/repo/$arch

[infinality-bundle-fonts]
Server = http://bohoomil.com/repo/fonts
_EOF"

sudo pacman -Sy \
	elementary-icon-theme \
	gtk-engine-murrine \
	lxappearance \
	ttf-hack \


packer -S \
	ibfonts-meta-base \
	ibfonts-meta-extended \
	ibfonts-meta-extended-lt \
	infinality-bundle \
	vertex-themes-git \
