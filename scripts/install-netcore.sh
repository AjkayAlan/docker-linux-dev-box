#!/bin/zsh

# Get LTS version
lts_version=$(curl https://dotnetcli.blob.core.windows.net/dotnet/Sdk/LTS/latest.version)
lts_version=${lts_version%.*}

# Install .NET Core and make it available
wget https://packages.microsoft.com/config/debian/11/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
dpkg -i packages-microsoft-prod.deb
apt update
apt install -y apt-transport-https
apt install -y dotnet-sdk-$lts_version

# Cleanup
rm packages-microsoft-prod.deb
