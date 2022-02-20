#!/bin/bash

# Add user to audio and wireshark groups.
sudo gpasswd -a ${USER} audio
#sudo gpasswd -a ${USER} wireshark
