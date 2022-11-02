#!/bin/zsh

# Install build dependencies
apt-get install -y \
    bash \
    curl \
    tar

# Install powershell-core
source ~/.zshrc
asdf plugin add powershell-core
asdf install powershell-core latest:7
asdf global powershell-core latest:7
