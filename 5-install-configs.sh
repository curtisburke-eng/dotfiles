#!/bin/bash

# Copy files from repo to local config dir
mkdir ~/.config/oh-my-posh
mkdir ~/.config/terminator
cp -p ~/dotfiles/.zshrc ~/.zshrc
cp -p ~/dotfiles/oh-my-posh/custom.omp.toml ~/.config/oh-my-posh/custom.omp.toml
cp -p ~/dotfiles/neofetch/config.conf ~/.config/neofetch/config.conf
cp -p ~/dotfiles/neofetch/my-handy-ascii-art.txt ~/.config/neofetch/my-handy-ascii-art.txt
cp -p ~/dotfiles/terminator/config ~/.config/terminator/
cp -p -r ~/dotfiles/micro ~/.config/micro
cp -p -r ~/dotfiles/flameshot ~/.config/flameshot

# Make working directories
mkdir ~/Multimedia
mv ~/Videos ~/Multimedia/Videos
mkdir ~/Vault
mkdir ~/Vault/1-PROJECTS
mkdir ~/Vault/2-AREAS
mkdir ~/Vault/3-RESOURCES
mkdir ~/Vault/3-RESOURCES/Obsidian-Vaults
mkdir ~/Vault/3-RESOURCES/Obsidian-Vaults/VDSG
mkdir ~/Vault/4-EXTRAS
mkdir ~/Vault/5-ARCHIVE
