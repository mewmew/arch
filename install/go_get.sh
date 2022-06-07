#!/bin/bash

# Regexp search and replace.
go install github.com/mewkiz/cmd/sar@master

# Local HTTP file server.
go install github.com/mewmew/playground/cmd/dela@master

# Faster grep.
go install github.com/svent/sift@master

# Wallpaper download utility.
go install github.com/mewmew/playground/archive/wallhaven/cmd/walls@master

# Word definition lookup.
go install github.com/Rican7/define@master

# Go debugger.
go install github.com/go-delve/delve/cmd/dlv@master

# Go tools.
go install golang.org/x/tools/...@master

# Frontend to Delve.
go install github.com/aarzilli/gdlv@master

# EBNF parser generator.
#go install github.com/inspirer/textmapper@master

# Autojump.
go install github.com/gsamokovarov/jump@main
