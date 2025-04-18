#!/bin/bash

# Copy files from repo to local config dir
mkdir ~/.config/oh-my-posh
cp -p ~/dotfiles/.zshrc ~/.zshrc
cp -p ~/dotfiles/oh-my-posh/custom.omp.toml ~/.config/oh-my-posh/custom.omp.toml
cp -p ~/dotfiles/neofetch/config.conf ~/.config/neofetch/config.conf
cp -p ~/dotfiles/neofetch/my-handy-ascii-art.txt ~/.config/neofetch/my-handy-ascii-art.txt
cp -p ~/dotfiles/kitty/kitty.conf ~/.config/kitty/kitty.conf
cp -p ~/dotfiles/kitty/theme.conf ~/.config/kitty/theme.conf
cp -p ~/dotfiles/Code/settings.json ~/.config/Code/User/settings.json

# Make working directories
mkdir ~/Multimedia
mv ~/Videos ~/Multimedia/Videos
mkdir ~/Vault
mkdir ~/Vault/1-PROJECTS
mkdir ~/Vault/2-AREAS
mkdir ~/Vault/3-RESOURCES
mkdir ~/Vault/4-EXTRAS
mkdir ~/Vault/5-ARCHIVE
