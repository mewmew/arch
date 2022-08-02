#!/bin/bash

AUR_PKGS=""

# Wayland
AUR_PKGS+=" startw"

# Desktop
AUR_PKGS+=" lwt-git"
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

# Develop
AUR_PKGS+=" edb-debugger"

# Music
AUR_PKGS+=" libcurl-gnutls" # spotify dep
AUR_PKGS+=" spotify"

# Theme
# * Redshift for Wayland
#AUR_PKGS+=" redshift-wlr-gamma-control-git"
# * Vertex theme for GTK
AUR_PKGS+=" vertex-themes-git"

# Debug
AUR_PKGS+=" rr-multilib"

yay -S --noeditmenu --nodiffmenu ${AUR_PKGS}
