#!/bin/bash
cd ~
git clone https://go.googlesource.com/go.git
cd ~/go/src
time ./all.bash
