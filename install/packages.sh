#!/bin/bash

# Xorg
sudo pacman -Sy \
	mesa-libgl \
	xclip \
	xf86-video-intel \
	xorg-apps \
	xorg-server \
	xorg-xev \
	xorg-xinit \
	xterm \

# Theme
sudo pacman -Sy \
	adobe-source-code-pro-fonts \
	elementary-icon-theme \
	feh \
	gtk-engine-murrine \
	lxappearance \
	redshift \
	slock \
	ttf-hack \

# Desktop
sudo pacman -Sy \
	gmrun \
	openbox \
	scrot \
	speedcrunch \
	tint2 \
	xcompmgr \

# Audio
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

sudo gpasswd -a ${USER} audio

# Shell
sudo pacman -Sy \
	atool \
	autojump \
	bash-completion \
	bchunk \
	ccd2iso \
	cpio \
	fish \
	mdf2iso \
	nrg2iso \
	optipng \
	p7zip \
	rlwrap \
	rsync \
	time \
	tree \
	udisks2 \
	unrar \
	unzip \
	zip \

sudo ln -s /usr/share/autojump/autojump.fish /etc/profile.d/autojump.fish

# Add sublime GPG key and channel.
wget -O /tmp/sublimehq-pub.gpg https://download.sublimetext.com/sublimehq-pub.gpg
sudo pacman-key --add /tmp/sublimehq-pub.gpg
sudo pacman-key --lsign-key 8A8F901A
rm /tmp/sublimehq-pub.gpg
echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/stable/x86_64" | sudo tee -a /etc/pacman.conf

# Editor
sudo pacman -Sy \
	geany \
	sublime-text \

# Browser
sudo pacman -Sy \
	chromium \
	firefox \

# E-mail
sudo pacman -Sy \
	thunderbird \

# Develop
sudo pacman -Sy \
	base-devel \
	bless \
	clang \
	cloc \
	gdb \
	ghc \
	git \
	graphviz \
	llvm \
	lsof \
	ltrace \
	mercurial \
	nasm \
	python \
	python-pip \
	ruby \
	strace \
	svn \
	vbindiff \

# Admin
sudo pacman -Sy \
	dosfstools \
	gparted \
	hardinfo \
	lxrandr \
	lxtask \
	powertop \
	screen \

# Office
sudo pacman -Sy \
	evince \
	libreoffice-still \
	texlive-most \

# Network
sudo pacman -Sy \
	dnsmasq \
	hostapd \
	macchanger \
	net-tools \
	openbsd-netcat \
	openssh \
	openvpn \
	traceroute \
	transmission-gtk \
	wget \
	wireless_tools \
	wireshark-gtk \
	wpa_supplicant \

# Virtualization
sudo pacman -Sy \
	qemu \
	virtualbox \

# Gaming
sudo pacman -Sy \
	tiled \

# Security
sudo pacman -Sy \
	veracrypt \

# Graphics
sudo pacman -Sy \
	blender \
	darktable \
	gimp \
	imagemagick \
	viewnior \

# Music
sudo pacman -Sy \
	deadbeef \

# Video
sudo pacman -Sy \
	libva-intel-driver \
	libvdpau-va-gl \
	mpv \
	vlc \

# Cleanup
sudo pacman -Sy \
	gdmap \
	rmlint \

# Printer
sudo pacman -Sy \
	cups \
	gtk3-print-backends \
	hplip \
	python2-gnomekeyring \
	system-config-printer \

# Scanner
sudo pacman -Sy \
	sane \

# Security
sudo pacman -Sy \
	aircrack-ng \
	nmap \
