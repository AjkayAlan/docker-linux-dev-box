#!/bin/bash

# Install git, and store credentials by default
apt-get install -y git
git config --global credential.helper store
