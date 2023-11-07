#!/bin/sh
UTILS="build-essential git make neovim"
X11="libx11-dev libxinerama-dev libxft-dev xserver-xorg xinit xinput x11-xserver-utils"
apt install $UTILS $X11
mkdir ./suckless && cd .suckless
git clone https://git.suckless.org/dmenu
git clone https://git.suckless.org/dwm
git clone https://git.suckless.org/st
cd dwm && make clean install
cd ../st && make clean install
cd ../dmenu && make clean install && cd ../..

