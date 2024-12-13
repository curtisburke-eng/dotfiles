# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load
ZSH_THEME=""

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# TODO: Maybe I need this???
source $ZSH/oh-my-zsh.sh


# Aliases
alias c='clear'
alias e='exit'
alias ls='ls --color=auto'

eval "$(jump shell)"
eval "$(oh-my-posh init zsh --config $HOME/.config/oh-my-posh/custom.omp.toml)"

# # Use custom shell colors
LS_COLORS='ex=38;5;120:di=01;38;5;46'
export LS_COLORS
