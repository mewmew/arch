#!/bin/bash

git clone https://go.googlesource.com/go.git ~/go

# Install Go 1.4.
cp -r ~/go ~/go1.4
cd ~/go1.4/src
git checkout release-branch.go1.4
time CGO_ENABLED=0 ./all.bash

# Install Go tip.
cd ~/go/src
time ./all.bash
