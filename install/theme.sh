#!/bin/bash
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
