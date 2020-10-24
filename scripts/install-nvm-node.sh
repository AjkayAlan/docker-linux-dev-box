#!/bin/zsh

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.36.0/install.sh | zsh
source ~/.zshrc

# Install latest lts node and update to latest npm
nvm install --lts
npm install -g npm@latest
