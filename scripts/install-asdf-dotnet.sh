#!/bin/zsh

# Install build dependencies
apt-get install -y \
    bash \
    curl \
    tar

# Install dotnet
source ~/.zshrc
asdf plugin add dotnet
asdf install dotnet latest
asdf global dotnet latest
