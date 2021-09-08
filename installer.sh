#!/bin/bash

# Git clone the repo
git clone https://github.com/gamingdoom/uname-r-discord-rich-presence.git
cd uname-r-discord-rich-presence
#build EasyRP
git clone https://github.com/Pizzabelly/EasyRP --recurse-submodules
cd EasyRP/discord-rpc
mkdir build && cd build
cmake .. -DENABLE_IO_THREAD=OFF
make
cd ..
cd .. 
cp -v discord-rpc/build/src/libdiscord-rpc.a libdiscord-rpc.a
meson --buildtype=release build
ninja -C build
cd .. 
cp -v EasyRP/build/easyrp easyrp
# Clean Up
rm -v EasyRP
# Copy Everything needed to main dir
mkdir ${HOME}/.local/share/uname-drp
rm -Rf .git/ .gitignore
cp * ${HOME}/.local/share/uname-drp/
cd .. 
# Start Setup
bash ${HOME}/.local/share/uname-drp/drpsetup
# Say Goodbye
rm -Rf uname-r-discord-rich-presence/


