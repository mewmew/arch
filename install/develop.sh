#!/bin/bash
sudo pacman -Sy \
	clang \
	cloc \
	gdb \
	ghc \
	llvm \
	ltrace \
	mercurial \
	nasm \
	python \
	python-pip \
	ruby \
	strace \
	svn \
	vbindiff \

packer -S \
	edb-debugger \
