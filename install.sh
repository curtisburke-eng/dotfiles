#/bin/bash

sudo apt update 
sudo apt install zsh -y
chsh -s $(which zsh)
sudo apt install wget -y
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh --no-check-certificate)"
cp ~/dotfiles/refined-edited.zsh-theme .oh-my-zsh/themes/refined-edited.zsh-theme
cp ~/dotfiles/.zshrc
cp ~/dotfiles/.dircolors
git config --global --add safe.directory /data  
zsh