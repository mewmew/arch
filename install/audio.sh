#!/bin/bash
sudo pacman -S \
	alsa-lib \
	alsa-utils \
	bluez-firmware \
	bluez-firmware \
	bluez-libs \
	bluez-utils \
	pavucontrol \
	pulseaudio \
	pulseaudio-alsa \
	pulseaudio-bluetooth \

# TODO: Check if needed.
#sudo gpasswd -a u audio
