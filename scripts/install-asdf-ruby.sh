#!/bin/zsh

# Install build dependencies
apt-get install -y \
    autoconf \
    bison \
    patch \
    build-essential \
    rustc \
    libssl-dev \
    libyaml-dev \
    libreadline6-dev \
    zlib1g-dev \
    libgmp-dev \
    libncurses5-dev \
    libffi-dev \
    libgdbm6 \
    libgdbm-dev \
    libdb-dev \
    uuid-dev

# Install ruby
source ~/.zshrc
asdf plugin add ruby
asdf install ruby latest:3
asdf global ruby latest:3
