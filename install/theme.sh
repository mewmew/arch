#!/bin/bash

sudo bash -c "grep -q infinality-bundle /etc/pacman.conf || cat >> /etc/pacman.conf <<'_EOF'

[infinality-bundle]
Server = http://bohoomil.com/repo/\$arch

[infinality-bundle-fonts]
Server = http://bohoomil.com/repo/fonts
_EOF"

sudo pacman-key --lsign-key 962DDE58

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
