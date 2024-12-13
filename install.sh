#/bin/bash

# Install packages
sudo apt update 
sudo apt-get update
sudo apt install curl -y
sudo apt install htop
sudo apt install net-tools
sudo snap install jump

# Install programs
sudo snap install code
sudo snap install obsidian

# Install ZSH Shell
sudo apt install zsh -y
chsh -s $(which zsh) 

# Install Oh-my-zsh plugin manager
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" -y

# Install oh-my-posh prompt theme & customizer
curl -s https://ohmyposh.dev/install.sh | bash -s
oh-my-posh font install meslo

# Install neofetch
sudo apt-get install neofetch

# Install Kitty Terminal
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
# Create symbolic links to add kitty and kitten to PATH (assuming ~/.local/bin is in your system-wide PATH)
ln -sf ~/.local/kitty.app/bin/kitty ~/.local/kitty.app/bin/kitten ~/.local/bin/
# Place the kitty.desktop file somewhere it can be found by the OS
cp ~/.local/kitty.app/share/applications/kitty.desktop ~/.local/share/applications/
# If you want to open text files and images in kitty via your file manager also add the kitty-open.desktop file
cp ~/.local/kitty.app/share/applications/kitty-open.desktop ~/.local/share/applications/
# Update the paths to the kitty and its icon in the kitty desktop file(s)
sed -i "s|Icon=kitty|Icon=$(readlink -f ~)/.local/kitty.app/share/icons/hicolor/256x256/apps/kitty.png|g" ~/.local/share/applications/kitty*.desktop
sed -i "s|Exec=kitty|Exec=$(readlink -f ~)/.local/kitty.app/bin/kitty|g" ~/.local/share/applications/kitty*.desktop
# Make xdg-terminal-exec (and hence desktop environments that support it use kitty)
echo 'kitty.desktop' > ~/.config/xdg-terminals.list

# Copy files from repo to local config dir
mkdir ~/.config/oh-my-posh
cp -p ~/dotfiles/.zshrc ~/.zshrc
cp -p ~/dotfiles/oh-my-posh/custom.omp.toml ~/.config/oh-my-posh/custom.omp.toml
cp -p ~/dotfiles/neofetch ~/.config/neofetch
cp -p ~/dotfiles/kitty ~/.config/kitty
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

