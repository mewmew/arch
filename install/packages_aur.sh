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
	blockify \
	spotify \

# Video
packer -S \
	python-subliminal

# Theme
packer -S \
	vertex-themes-git \
