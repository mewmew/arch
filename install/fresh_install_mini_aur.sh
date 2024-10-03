### [ pre-install ] ###

# aur
#~/arch/install/yay.sh

### [ install ] ###

AUR_PKGS=

# Browser
AUR_PKGS+=" ungoogled-chromium-bin"

# Terminal
AUR_PKGS+=" lwt-git"

# VPN
AUR_PKGS+=" mullvad-vpn-bin"

# LaTeX
AUR_PKGS+=" latexrun"

# Disk management
AUR_PKGS+=" duff"

# Youtube download
AUR_PKGS+=" yt-dlp"

yay ${AUR_PKGS}
