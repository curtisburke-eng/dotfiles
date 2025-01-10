#!/bin/bash

# Install oh-my-posh prompt theme & customizer
curl -s https://ohmyposh.dev/install.sh | bash -s
PATH=$PATH:/home/cburke/.local/bin
oh-my-posh font install meslo