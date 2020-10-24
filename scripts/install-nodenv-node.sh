#!/bin/zsh

# Install nodenv
git clone https://github.com/nodenv/nodenv.git ~/.nodenv
echo 'export PATH="$HOME/.nodenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(nodenv init -)"' >> ~/.zshrc
source ~/.zshrc

# Add node-build
mkdir -p "$(nodenv root)"/plugins
git clone https://github.com/nodenv/node-build.git "$(nodenv root)"/plugins/node-build

# Get Latest LTS
# See https://github.com/nodejs/Release/issues/295#issuecomment-445351538 
lts_version=$(curl -L resolve-node.now.sh/lts)
nodenv install ${lts_version:1}
nodenv global ${lts_version:1}

# Upgrade npm
npm install -g npm@latest
