#!/bin/bash

PKGS=""

# Desktop
AUR_PKGS+=" gmrun"

# Browser
AUR_PKGS+=" ungoogled-chromium-bin"

# Network
AUR_PKGS+=" mullvad-vpn-bin"

yay -S --answeredit n --answerdiff n ${AUR_PKGS}
