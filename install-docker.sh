#/bin/bash

# Install packages
sudo apt update 
sudo snap install jump

# Install ZSH Shell
sudo apt install zsh -y
chsh -s $(which zsh) 

# Install Oh-my-zsh plugin manager
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh --no-check-certificate)" -y


# Install oh-my-posh prompt theme & customizer
wget -q https://ohmyposh.dev/install.sh | bash -s
oh-my-posh font install meslo

# Copy files from repo to local config dir
mkdir ~/.config/oh-my-posh
cp -p ~/dotfiles/.zshrc ~/.zshrc
cp -p ~/dotfiles/oh-my-posh/custom.omp.toml ~/.config/oh-my-posh/custom.omp.toml

git config --global --add safe.directory /data 
