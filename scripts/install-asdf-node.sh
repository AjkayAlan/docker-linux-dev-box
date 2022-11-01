#!/bin/zsh

# Install build dependencies - python already installed by now so its not included
apt-get install -y \
    g++ \
    make

# Install node
asdf plugin add nodejs
asdf install nodejs lts
asdf global nodejs lts

# Update npm
npm install -g npm

# Install yarn
npm install -g yarn
