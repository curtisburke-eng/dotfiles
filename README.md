# Setting up a new Linux build with dotfile configs
## Prerequisites
Start with a freshly installed version of Debian based Linux (with the apt package manager)
### Install & Configure Git
- Update the package manager
```
sudo apt update
sudo apt upgrade -y
```

- Install Git
```
sudo apt install git
```

- Configure Git credentials
```
git config --global user.name <TODO:USER-NAME>
```

```
git config --global user.email <TODO:USER-EMAIL>
```

- _Optional:_ Set up ssh key - [How-To:Git SSH](https://github.com/curtisburke-eng/dotfiles/blob/main/documentation/git-ssh.md)

### Get the configuration files
- Clone the `dotfiles` repo into the home directory
```
cd && git clone https://github.com/curtisburke-eng/dotfiles.git
```

## Run the install scripts

### 1. Update & Install packages

- Run the first install script to update the packages and install:
	- curl
	- htop
	- net-tools
	- neofetch
	- flameshot
	- ripgrep
	- tree
	- direnv
	- terminator


```
cd ~/dotfiles
```
```
./1-install-pkgs.sh
```

### 2. Download & Install Programs
- Navigate the web to download any `.deb` programs not managed by apt
	- [Wavebox](https://wavebox.io/download)
	- [Obsidian](https://obsidian.md/download)
	- [VS Code](https://code.visualstudio.com/download)
- Download jump using wget
```
cd ~/Downloads
wget https://github.com/gsamokovarov/jump/releases/download/v0.51.0/jump_0.51.0_amd64.deb && sudo dpkg -i jump_0.51.0_amd64.deb
```
- From within the `Downloads` direcory `echo` the file names for all the programs ready for install
	- Tip: Use tab complete
```
echo <use-tab-complete>
```
- Run the second install script to loop the filenames and install each
```
../dotfiles/2-install-progs.sh $(!!)
```
- Answer "YES" to the question from VS Code
- Run code to create the initial config directories
```
code
```
### 3. Install ZSH & Oh-my-Zsh
```
cd ~/dotfiles
./3-install-zsh.sh
```
### 4. Install oh-my-posh
```
./4-install-posh.sh
```
### 5. Configure Settings
- Copies configuration files for each program from the repo to the local config directories
- Creates a working directory following a modified [PARA organization method](https://fortelabs.com/blog/para/)
```
./5-install-configs.sh
```
### 6. Log out & Clean up
- Log out & Log back in
- Confirm everything looks nice
- Move or Remove the used dotfiles repo
	- Run this command from the Home directory
```
mv ~/dotfiles ~/Vault/3-RESOURCES
```
**OR**
```
rm -r ~/dotfiles
```
## Post Install

### Configure VS Code Extensions
- My VS Code settings are saved using setting sync paired with my GitHub account.
  - Sign in to complete setting syncing

### Replace app icons
- Navigate to the dotfiles directory within 3-RESOURCES
```
cd ~/Vault/3-RESOURCES/dotfiles
```
- Run the update icon script (with super user permissions)
```
sudo ./update_icons.sh
```

### Create a GitHub/GitLab ssh key (if not done so already)
- Set up ssh key - [How-To:Git SSH](https://github.com/curtisburke-eng/dotfiles/blob/main/documentation/git-ssh.md)

## References
- [zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH) shell
- [Oh my Zsh](https://github.com/ohmyzsh/ohmyzsh) plugin manager
- [Oh my posh](https://ohmyposh.dev/) prompt theme
- [neofetch](https://github.com/dylanaraps/neofetch)
- [terminator](https://gnome-terminator.org/) terminal emulator
