#!/bin/bash

AUR_PKGS=""

# Wayland
AUR_PKGS+=" startw"

# Desktop
AUR_PKGS+=" lwt-git"
AUR_PKGS+=" spacefm-gtk2"
AUR_PKGS+=" wdisplays"

# Audio
AUR_PKGS+=" bluez-firmware"

# Shell
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

# Put subliminal last since its AUR package often fails to build.

packer -S --noedit ${AUR_PKGS}
