#!/bin/bash

# install those dotfiles
rm ~/.profile ~/.bashrc
ln -s ~/.dotfiles/.* ~/
rm ~/.git ~/.gitmodules

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install default things
brew install nvm git mysql mongodb redis

# install node
source ~/.profile
nvm install 4
