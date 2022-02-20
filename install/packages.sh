#!/bin/bash

# Add sublime GPG key and channel.
wget -O /tmp/sublimehq-pub.gpg https://download.sublimetext.com/sublimehq-pub.gpg
sudo pacman-key --add /tmp/sublimehq-pub.gpg
sudo pacman-key --lsign-key 8A8F901A
rm /tmp/sublimehq-pub.gpg
echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/stable/x86_64" | sudo tee -a /etc/pacman.conf

# Add multilib
echo -e "\n[multilib]\nInclude = /etc/pacman.d/mirrorlist" | sudo tee -a /etc/pacman.conf

# Xorg
PKGS="mesa-libgl"
PKGS+=" xclip"
PKGS+=" xf86-video-intel"
PKGS+=" xorg-apps"
PKGS+=" xorg-server"
PKGS+=" xorg-xev"
PKGS+=" xorg-xinit"
PKGS+=" xterm"

# Wayland
PKGS+=" sway"
PKGS+=" swayidle"
PKGS+=" swaylock"
PKGS+=" xorg-server-xwayland"
# Wayland screenshot
PKGS+=" grim"
PKGS+=" slurp"
# Wayland screen recorder
PKGS+=" wf-recorder"

# Graphics and sound libs.
PKGS+=" sdl2_mixer"
PKGS+=" sdl2_ttf"
PKGS+=" libgl"

# Theme
PKGS+=" adobe-source-code-pro-fonts"
PKGS+=" elementary-icon-theme"
PKGS+=" feh"
PKGS+=" gtk-engine-murrine"
PKGS+=" lxappearance"
# * Redshift for X11.
#PKGS+=" redshift"
PKGS+=" slock"
PKGS+=" ttf-hack"

# Desktop
PKGS+=" caja"
PKGS+=" caja-open-terminal"
PKGS+=" gmrun"
PKGS+=" openbox"
PKGS+=" scrot"
PKGS+=" speedcrunch"
PKGS+=" tint2"
PKGS+=" xcompmgr"

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
PKGS+=" atool"
PKGS+=" bash-completion"
PKGS+=" bat"
PKGS+=" bchunk"
PKGS+=" ccd2iso"
PKGS+=" cpio"
PKGS+=" fish"
PKGS+=" fzf"
PKGS+=" lsd"
PKGS+=" man"
PKGS+=" man-pages"
PKGS+=" mdf2iso"
PKGS+=" nrg2iso"
PKGS+=" optipng"
PKGS+=" p7zip"
PKGS+=" rlwrap"
PKGS+=" rsync"
PKGS+=" screen"
PKGS+=" time"
PKGS+=" tree"
PKGS+=" udisks2"
PKGS+=" unrar"
PKGS+=" unzip"
PKGS+=" youtube-dl"
PKGS+=" zip"

# Editor
PKGS+=" code"
PKGS+=" geany"
PKGS+=" sublime-text"

# Browser
PKGS+=" chromium"
PKGS+=" firefox"

# E-mail
PKGS+=" thunderbird"

# Develop
PKGS+=" base-devel"
# * clang also include clang-tidy and clang-query
PKGS+=" clang"
PKGS+=" cloc"
PKGS+=" cppcheck"
PKGS+=" gdb"
PKGS+=" ghc"
PKGS+=" git"
PKGS+=" go"
PKGS+=" graphviz"
PKGS+=" llvm"
PKGS+=" lsof"
PKGS+=" ltrace"
PKGS+=" mercurial"
PKGS+=" nasm"
PKGS+=" python"
PKGS+=" python-pip"
PKGS+=" ruby"
PKGS+=" strace"
PKGS+=" svn"
PKGS+=" vbindiff"

# Admin
PKGS+=" dosfstools"
PKGS+=" gparted"
PKGS+=" hardinfo"
PKGS+=" lxrandr"
PKGS+=" lxtask"
PKGS+=" ntfs-3g"
PKGS+=" powertop"

# Office
PKGS+=" evince"
PKGS+=" libreoffice-still"
PKGS+=" okular"
PKGS+=" texlive-most"

# Network
PKGS+=" dnsmasq"
PKGS+=" filezilla"
PKGS+=" hostapd"
PKGS+=" inetutils"
PKGS+=" macchanger"
PKGS+=" net-tools"
PKGS+=" openbsd-netcat"
PKGS+=" openssh"
PKGS+=" openvpn"
PKGS+=" sshfs"
PKGS+=" traceroute"
PKGS+=" transmission-gtk"
PKGS+=" wget"
PKGS+=" wireless_tools"
PKGS+=" wireshark-qt"
PKGS+=" wpa_supplicant"

# Virtualization
PKGS+=" linux-headers"
PKGS+=" qemu"
PKGS+=" virtualbox"

# Gaming
PKGS+=" tiled"

# Security
PKGS+=" veracrypt"

# Graphics
PKGS+=" blender"
PKGS+=" darktable"
PKGS+=" gimp"
PKGS+=" imagemagick"
PKGS+=" viewnior"

# Video
PKGS+=" avidemux-qt"
PKGS+=" libva-intel-driver"
PKGS+=" libvdpau-va-gl"
PKGS+=" mpv"
PKGS+=" vlc"
PKGS+=" vokoscreen"

# Reversing
PKGS+=" binwalk"

# Cleanup
PKGS+=" gdmap"
PKGS+=" rmlint"

# Printer
PKGS+=" cups"
PKGS+=" gtk3-print-backends"
PKGS+=" hplip"
PKGS+=" system-config-printer"

# Scanner
PKGS+=" sane"

# Security
PKGS+=" aircrack-ng"
PKGS+=" hydra"
PKGS+=" nmap"

# blackarch
#PKGS+=" arp-scan"
#PKGS+=" bypass-firewall-dns-history"
#PKGS+=" creak"
#PKGS+=" dnsfilexfer"
#PKGS+=" dtp-spoof"
#PKGS+=" exabgp"
#PKGS+=" hyenae"

# Install packages.
sudo pacman -Sy ${PKGS}

# Add user to audio and wireshark groups.
sudo gpasswd -a ${USER} audio
#sudo gpasswd -a ${USER} wireshark
