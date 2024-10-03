### [ pre-install ] ###

# prepare sublime mirror
#~/arch/install/prepend_multilib_and_sublime_mirrorlist.sh

### [ install ] ###

PKGS=

# Core
PKGS+=" sway"
PKGS+=" swaybg"
PKGS+=" swaylock"

# Terminal
PKGS+=" fish"
PKGS+=" man"
PKGS+=" atool"
PKGS+=" unzip"
PKGS+=" p7zip"
PKGS+=" unrar"
PKGS+=" cloc"

# Browser
PKGS+=" firefox"

# Application launcher
PKGS+=" gmrun"

# File manager
PKGS+=" nemo"

# Text editor
PKGS+=" sublime-text"

# Image viewer
PKGS+=" ristretto"

# Video player
PKGS+=" mpv"
PKGS+=" vlc"

# debugging
PKGS+=" gdb"
PKGS+=" ltrace"

# dev
PKGS+=" rustup"
PKGS+=" go"

# Email client
PKGS+=" thunderbird"

# Chat client
#PKGS+=" discord"

# Virtual Machines
PKGS+=" virtualbox"

# Encrypted storage
PKGS+=" veracrypt"

# Screenshot
PKGS+=" grim"
PKGS+=" slurp"

# Alternative (crappy) text editor
PKGS+=" geany"

# Image manipulation tools
PKGS+=" imagemagick"

# Image editor
PKGS+=" gimp"

# Calculator
PKGS+=" speedcrunch"

# PDF viewer
PKGS+=" evince"
PKGS+=" okular"

# LaTeX
PKGS+=" texlive"

# Disk management
PKGS+=" gparted"
PKGS+=" dosfstools"

# 3d tools
#PKGS+=" blender"

# Map editor
#PKGS+=" tiled"

# Torrents
PKGS+=" transmission-gtk"

# Network
PKGS+=" netcat"

# extra
PKGS+=" fzf"
PKGS+=" lsd"
PKGS+=" grc"
PKGS+=" bat"
PKGS+=" tree"

sudo pacman -Sy ${PKGS}
