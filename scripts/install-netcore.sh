#!/bin/zsh

# Install .NET Core and make it available
wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
dpkg -i packages-microsoft-prod.deb
apt update
apt install -y apt-transport-https
apt install -y dotnet-sdk-3.1

# Cleanup
rm packages-microsoft-prod.deb
