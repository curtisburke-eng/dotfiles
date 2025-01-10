#!/bin/bash
sudo apt install zsh -y
chsh -s $(which zsh) 

# Install Oh-my-zsh plugin manager
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" -y