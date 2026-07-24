#!/bin/bash

# Make working directories
mkdir ~/Multimedia
mv ~/Videos ~/Multimedia/Videos

mkdir ~/Vault
mkdir ~/Vault/1-VCRD
mkdir ~/Vault/1-VECS
mkdir ~/Vault/2-VAD
mkdir ~/Vault/3-VSP
mkdir ~/Vault/3-VSP/Programs

git clone git@gitlab.com:curtisburke-eng/vault-dweller-survival-guide.git
mv -r vault-dweller-survival-guide 4-VDSG

mkdir ~/Vault/5-VCS
