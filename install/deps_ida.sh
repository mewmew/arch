#!/bin/bash

packer -S --noedit \
	ld-lsb \

#	gcc-multilib \
#	lib32-qt5-base-bin \

#sudo pacman -Sy multilib-devel lib32-glib2 lib32-libxext
#packer -S --noedit lib32-qt5-base-bin
#ln -s /lib64/ld-linux-x86-64.so.2 /lib64/ld-lsb-x86-64.so.3
