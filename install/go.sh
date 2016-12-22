#!/bin/bash
git clone https://go.googlesource.com/go.git ~/go
# Install Go 1.4.
cp -r ~/go ~/go1.4
cd ~/go1.4/src
git checkout release-branch.go1.4
time ./all.bash
# Install Go tip.
cd ~/go
time ./all.bash
