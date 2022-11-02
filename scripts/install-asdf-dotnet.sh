#!/bin/zsh

# Install build dependencies
apt-get install -y \
    bash \
    curl \
    tar

# Install dotnet
source ~/.zshrc
asdf plugin add dotnet
asdf install dotnet latest:6
asdf global dotnet latest:6
