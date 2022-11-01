#!/bin/zsh

# Install go
source ~/.zshrc
asdf plugin add terraform
asdf install terraform latest
asdf global terraform latest
