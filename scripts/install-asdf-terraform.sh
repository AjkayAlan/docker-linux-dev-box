#!/bin/zsh

# Install go
source ~/.zshrc
asdf plugin add terraform
asdf install terraform latest:1
asdf global terraform latest:1
