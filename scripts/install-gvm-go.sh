#!/bin/zsh

# Install needed dependencies
apt install -y \
    curl \
    git \
    mercurial \
    make \
    binutils \
    bison \
    gcc \
    build-essential

# Install gvm
zsh < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
source ~/.zshrc

# Install go
latest_gvm="$(gvm listall | grep -o 'go[0-9]\{1,\}\.[0-9]\{1,\}$' | sort --version-sort | tail -n1)"
gvm install $latest_gvm --binary
gvm use $latest_gvm --default
gvm pkgset create default
gvm pkgset use default
