#!/bin/bash

# Install packer
./packer.sh

# Desktop
packer -S \
	lwt-git \
	spacefm \

# Shell
packer -S \
	cv-git \
	duff \
	grc \
	srm \
	youtube-dl-git \

# Develop
packer -S \
	edb-debugger \
	wxhexeditor-git \

# Music
packer -S \
	8play \
	libcurl-gnutls \
	spotify \
	blockify \

# Theme
packer -S \
	vertex-themes-git \

# Put subliminal last since its AUR package often fails to build.

# Video
packer -S \
	python-subliminal
