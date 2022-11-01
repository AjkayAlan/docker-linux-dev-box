#!/bin/zsh

# Install build dependencies
apt-get install -y \
    curl \
    git \
    bash \
    tar \
    unzip

# Install awscli
asdf plugin add awscli
asdf install awscli latest
asdf global awscli latest
