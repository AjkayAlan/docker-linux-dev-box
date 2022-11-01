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
asdf plugin add ruby
asdf install ruby latest
asdf global ruby latest
