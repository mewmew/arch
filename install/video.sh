#!/bin/bash
sudo pacman -Sy \
	libva-intel-driver \
	libvdpau-va-gl \
	mpv \
	vlc \

# TODO: Use packer -S python-subliminal-git, when the AUR package builds without
# errors. Using pip for now.
pip install --user subliminal