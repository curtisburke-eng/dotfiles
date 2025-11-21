#!/bin/bash

curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix \
  | sh -s -- install \
      --nix-package-url=https://releases.nixos.org/nix/nix-2.24.12/nix-2.24.12-x86_64-linux.tar.xz \
      --extra-conf "trusted-users = root, $USER" \
      --extra-conf 'extra-substituters = s3://ldx-nix-cache?region=us-west-2' \
      --extra-conf 'extra-trusted-substituters = s3://ldx-nix-cache?region=us-west-2' \
      --extra-conf 'extra-trusted-public-keys = antechdx-nix-cache-1:xqk3rhLHsJOUDW+140HJo6rk11ES9rm1IOGkAgg9DLI='

. /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh

nix profile install "nixpkgs#awscli2"

aws configure

sudo $(which aws) configure

aws sts get-caller-identity
