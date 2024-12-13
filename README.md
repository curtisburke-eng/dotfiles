# Setting up a new Linux build with dotfile configs
## Prerequisites 
Start with a freshly installed version of Ubuntu
- Update the package manager
```
sudo apt update -y
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

- Set up ssh key - [How-To:Git SSH](https://github.com/curtisburke-eng/dotfiles.git/documentation/git-ssh.md)

- Clone the `dotfiles` repo into the home directory
```
cd && git clone https://github.com/curtisburke-eng/dotfiles.git
```

- Run the install script
```
./dotfiles/install.sh
```

## The Install Script - `install.sh`
- Installs needed and most used packages 
- Installs programs 
	- Wavebox Browser will still need to be installed - [How-To: Install Wavebox](https://github.com/curtisburke-eng/dotfiles.git/documentation/How-to-install-Wavebox.md)
- Installs [zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH) shell
- Installs [Oh my Zsh](https://github.com/ohmyzsh/ohmyzsh) plugin manager
- Installs [Oh my posh](https://ohmyposh.dev/) prompt theme 
- Installs [neofetch](https://github.com/dylanaraps/neofetch)
- Installs [kitty](https://sw.kovidgoyal.net/kitty/binary/) terminal
- Copies configuration files for each program from the repo to the local config directory
- Creates a working directory following a modified [PARA organization method](https://fortelabs.com/blog/para/)

# TODO: 
Update VSCode config file with my extensions and their settings