#!/bin/bash

# Copy files from repo to local config dir
mkdir ~/.config/oh-my-posh
mkdir ~/.config/terminator

cp -p ~/overseer-terminal-config/.zshrc ~/.zshrc
cp -p ~/overseer-terminal-config/oh-my-posh/custom.omp.toml ~/.config/oh-my-posh/custom.omp.toml
cp -p ~/overseer-terminal-config/neofetch/config.conf ~/.config/neofetch/config.conf
cp -p ~/overseer-terminal-config/neofetch/my-handy-ascii-art.txt ~/.config/neofetch/my-handy-ascii-art.txt
cp -p ~/overseer-terminal-config/neofetch/vault-tech-ascii-art.txt ~/.config/neofetch/vault-tech-ascii-art.txt
cp -p ~/overseer-terminal-config/terminator/config ~/.config/terminator/
cp -p -r ~/overseer-terminal-config/micro ~/.config/micro

cp -p -r ~/overseer-terminal-config/.claude ~/.claude
cp -p ~/overseer-terminal-config/Code/settings.json ~/Code/settings.json

if [ "$USER" = "cburke" ]; then
    cp -p -r ~/overseer-terminal-config/.jump/cburke-pins.json ~/.jump/pins.json
    cp -p -r ~/overseer-terminal-config/flameshot/cburke-flameshot.ini ~/.config/flameshot/flameshot.ini
else
    cp -p -r ~/overseer-terminal-config/.jump/overseer-pins.json ~/.jump/pins.json
    cp -p -r ~/overseer-terminal-config/flameshot/overseer-flameshot.ini ~/.config/flameshot/flameshot.ini
fi