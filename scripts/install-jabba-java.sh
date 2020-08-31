#!/bin/zsh

# Install jabba and make it available
curl -sL https://github.com/shyiko/jabba/raw/master/install.sh | bash && . ~/.jabba/jabba.sh
source ~/.zshrc

# Install Java
jabba install adopt@1.11-0
jabba use adopt@1.11-0

# Install Maven
apt install -y maven

# Install Gradle
sdk install gradle
