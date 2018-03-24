#!/bin/bash
sudo pacman -Sy \
	atool \
	autojump \
	base-devel \
	bash-completion \
	chromium \
	cpio \
	firefox \
	fish \
	geany \
	git \
	gmrun \
	net-tools \
	openbox \
	openbsd-netcat \
	openssh \
	p7zip \
	rsync \
	time \
	tint2 \
	udisks2 \
	unrar \
	unzip \
	veracrypt \
	wget \
	wireless_tools \
	wpa_supplicant \
	zip \

packer -S \
	grc \
	lwt-git \
	spacefm \
	sublime-text-dev \

sudo ln -s /usr/share/autojump/autojump.fish /etc/profile.d/autojump.fish
