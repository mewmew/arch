#!/bin/bash

PKGS=""

# Wayland
PKGS+=" sway"
PKGS+=" swaybg"
PKGS+=" swaylock"

# Wayland screenshot
PKGS+=" grim"
PKGS+=" slurp"

# Wayland screen recorder
PKGS+=" wf-recorder"

# Wayland copy/paste
PKGS+=" wl-clipboard"

# Desktop
PKGS+=" gmrun"
PKGS+=" nemo"
PKGS+=" speedcrunch"

# Audio
PKGS+=" alsa-lib"
PKGS+=" alsa-utils"
PKGS+=" bluez-libs"
PKGS+=" bluez-utils"
PKGS+=" pavucontrol"
PKGS+=" pulseaudio"
PKGS+=" pulseaudio-alsa"
PKGS+=" pulseaudio-bluetooth"

# Shell
PKGS+=" bash-completion"
PKGS+=" bat"
PKGS+=" fish"
PKGS+=" fish"
PKGS+=" fzf"
PKGS+=" man"
PKGS+=" p7zip"
PKGS+=" rlwrap"
PKGS+=" rsync"
PKGS+=" unrar"
PKGS+=" unzip"
PKGS+=" zip"

# Editor
PKGS+=" geany"
PKGS+=" sublime-text"

# Browser
PKGS+=" firefox"

# E-mail
PKGS+=" thunderbird"

# Develop
PKGS+=" base-devel"
PKGS+=" clang"
PKGS+=" cloc"
PKGS+=" gdb"
PKGS+=" git"
PKGS+=" go"
PKGS+=" graphviz"
PKGS+=" llvm"
PKGS+=" lsof"
PKGS+=" ltrace"
PKGS+=" nasm"
PKGS+=" python"
PKGS+=" strace"
PKGS+=" vbindiff"

# Admin
PKGS+=" light"

# Office
PKGS+=" evince"

# Network
PKGS+=" macchanger"
PKGS+=" net-tools"
PKGS+=" openssh"
PKGS+=" openvpn"
PKGS+=" sshfs"
PKGS+=" subdl"
PKGS+=" transmission-gtk"
PKGS+=" wget"
PKGS+=" wireless_tools"
PKGS+=" wpa_supplicant"

# Security
PKGS+=" veracrypt"

# Graphics
PKGS+=" imagemagick"
PKGS+=" viewnior"

# Video
PKGS+=" mpv"
PKGS+=" vlc"

# Install packages.
sudo pacman -Sy ${PKGS}
