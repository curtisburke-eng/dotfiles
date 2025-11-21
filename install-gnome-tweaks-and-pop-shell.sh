#!/bin/bash

sudo apt update
sudo apt upgrade -y

sudo apt install gnome-tweaks -y
sudo apt install gnome-shell-extension-manager -y

sudo apt install node-typescript make gnome-shell-extension-prefs -y

cd ~/Vault/3-RESOURCES/
git clone https://github.com/pop-os/shell.git
mv shell pop-shell
cd pop-shell

git checkout master_noble

make local-install
