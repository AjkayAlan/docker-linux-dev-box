#!/bin/zsh

# Install asdf and set to load
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2
sed -i 's/\(^plugins=([^)]*\)/\1 asdf/' ~/.zshrc
source ~/.zshrc
