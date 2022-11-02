#!/bin/zsh

# Install build dependencies - python already installed by now so its not included
apt-get install -y \
    g++ \
    make

# Install node
source ~/.zshrc
asdf plugin add nodejs
asdf install nodejs latest:18
asdf global nodejs latest:18

# Update npm
npm install -g npm

# Install yarn
npm install -g yarn
