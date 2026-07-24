#!/bin/bash

# Install oh-my-posh prompt theme & customizer
curl -s https://ohmyposh.dev/install.sh | bash -s
PATH=$PATH:$HOME/.local/bin
oh-my-posh font install meslo