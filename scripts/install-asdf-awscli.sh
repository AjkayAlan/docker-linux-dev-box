#!/bin/zsh

# Install build dependencies
apt-get install -y \
    curl \
    git \
    bash \
    tar \
    unzip

# Install awscli
source ~/.zshrc
asdf plugin add awscli
asdf install awscli latest:2
asdf global awscli latest:2
