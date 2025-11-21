#!/bin/bash

cd ~/Vault/1-PROJECTS/
git clone git@gitlab.com:lightdeckdx/antechdx/element-i-plus-production-tool/element-i-plus-production-tool.git
mv element-i-plus-production-tool EPT
git clone git@gitlab.com:lightdeckdx/antechdx/element-i-plus-application.git
mv element-i-plus-application EAPP
git clone git@gitlab.com:lightdeckdx/antechdx/emc-test-app.git
git clone git@gitlab.com:lightdeckdx/antechdx/ci-cd-and-nix-packaging.git
git clone git@gitlab.com:lightdeckdx/antechdx/laser-collimation-tool.git
mv laser-collimation-tool LCT

mkdir HAL
cd HAL
git clone git@gitlab.com:lightdeckdx/antechdx/element-i-plus-hal/hal-client-library.git
git clone git@gitlab.com:lightdeckdx/antechdx/element-i-plus-hal/hal-proto-definitions.git
git clone git@gitlab.com:lightdeckdx/antechdx/element-i-plus-hal/hal-python-client-library.git
git clone git@gitlab.com:lightdeckdx/antechdx/element-i-plus-hal/hal-server.git

cd ..
mkdir yocto
cd yocto
git clone git@gitlab.com:lightdeckdx/antechdx/yocto-projects/atlas-release.git
