#!/bin/bash

PKGS=""

# Browser
AUR_PKGS+=" ungoogled-chromium-bin"

# Network
AUR_PKGS+=" mullvad-vpn-bin"

yay -S --noeditmenu --nodiffmenu ${AUR_PKGS}
