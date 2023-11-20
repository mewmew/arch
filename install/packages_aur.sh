#!/bin/bash

AUR_PKGS=""

# Wayland
AUR_PKGS+=" startw"

# Desktop
AUR_PKGS+=" wdisplays"

# Admin
AUR_PKGS+=" hardinfo-git"

# Audio
AUR_PKGS+=" bluez-firmware"

# Cleanup
AUR_PKGS+=" gdmap"

# Shell
AUR_PKGS+=" atool"
AUR_PKGS+=" duff"
AUR_PKGS+=" srm"
AUR_PKGS+=" yt-dlp"

# Browser
AUR_PKGS+=" ungoogled-chromium-bin"

# Develop
AUR_PKGS+=" edb-debugger"

# Theme
# * Redshift for Wayland
#AUR_PKGS+=" redshift-wlr-gamma-control-git"
# * Vertex theme for GTK
AUR_PKGS+=" vertex-themes-git"

# Network
AUR_PKGS+=" mullvad-vpn"

# Debug
AUR_PKGS+=" rr-multilib"

yay -S --noeditmenu --nodiffmenu ${AUR_PKGS}
