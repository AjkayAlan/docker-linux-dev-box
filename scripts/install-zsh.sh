#!/bin/bash

# Install zsh
apt install -y zsh

# Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Switch to zsh
zsh
chsh -s $(which zsh)

# Install a nerdfont
mkdir -p /usr/share/fonts/opentype
wget https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/CascadiaCode/Regular/complete/Caskaydia%20Cove%20Regular%20Nerd%20Font%20Complete.otf -P /usr/share/fonts/opentype
fc-cache -f -v

# Install powerlevel9k
if [ ! -d "~/.oh-my-zsh/custom/themes/powerlevel9k" ] ; then
    git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
    sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="powerlevel9k\/powerlevel9k"/g' ~/.zshrc
    echo "POWERLEVEL9K_MODE='nerdfont-complete'" >> ~/.zshrc
    echo 'POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)' >> ~/.zshrc
    source ~/.zshrc
fi
