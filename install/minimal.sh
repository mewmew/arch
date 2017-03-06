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
	grc \
	net-tools \
	openbox \
	openbsd-netcat \
	openssh \
	p7zip \
	rsync \
	time \
	tint2 \
	truecrypt \
	udisks2 \
	unrar \
	unzip \
	wget \
	wireless_tools \
	wpa_supplicant \
	zip \

packer -S \
	lwt-git \
	spacefm \
	sublime-text-dev \

sudo ln -s /usr/share/autojump/autojump.fish /etc/profile.d/autojump.fish
