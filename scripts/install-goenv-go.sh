#!/bin/zsh

# Install goenv
git clone https://github.com/syndbg/goenv.git ~/.goenv

# Initialize goenv in shell
echo 'export GOENV_ROOT="$HOME/.goenv"' >> ~/.zshrc
echo 'export PATH="$GOENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(goenv init -)"' >> ~/.zshrc
echo 'export PATH="$GOROOT/bin:$PATH"' >> ~/.zshrc
echo 'export PATH="$PATH:$GOPATH/bin"' >> ~/.zshrc
source ~/.zshrc

# Install latest go
goenv install $(goenv install -l | grep -v - | tail -1)
goenv global $(goenv install -l | grep -v - | tail -1)
