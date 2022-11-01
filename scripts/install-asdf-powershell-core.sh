#!/bin/zsh

# Install build dependencies
apt-get install -y \
    bash \
    curl \
    tar

# Install powershell-core
asdf plugin add powershell-core
asdf install powershell-core latest
asdf global powershell-core latest
