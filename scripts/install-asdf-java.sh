#!/bin/zsh

# Install build dependencies
apt-get install -y \
    bash \
    curl \
    coreutils \
    unzip \
    jq

# Install java
asdf plugin add java
asdf install java latest:adoptopenjdk-17
asdf global java latest:adoptopenjdk-17

# Install maven
asdf plugin add maven
asdf install maven latest
asdf global maven latest

# Install gradle
asdf plugin add gradle
asdf install gradle latest
asdf global gradle latest
