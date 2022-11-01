#!/bin/zsh

# Install go
source ~/.zshrc
asdf plugin add golang
asdf install golang latest
asdf global golang latest
