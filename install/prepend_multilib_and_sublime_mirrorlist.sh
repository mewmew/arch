#!/bin/bash

# Add sublime GPG key and channel.
wget -O /tmp/sublimehq-pub.gpg https://download.sublimetext.com/sublimehq-pub.gpg
sudo pacman-key --add /tmp/sublimehq-pub.gpg
sudo pacman-key --lsign-key 8A8F901A
rm /tmp/sublimehq-pub.gpg
echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/stable/x86_64" | sudo tee -a /etc/pacman.conf

# Add multilib
echo -e "\n[multilib]\nInclude = /etc/pacman.d/mirrorlist" | sudo tee -a /etc/pacman.conf
