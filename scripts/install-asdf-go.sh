#!/bin/zsh

# Install go
source ~/.zshrc
asdf plugin add golang
asdf install golang latest:1
asdf global golang latest:1
