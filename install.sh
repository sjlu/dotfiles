#!/bin/bash

# install those dotfiles
rm ~/.profile ~/.bashrc
ln -s ~/.dotfiles/.* ~/
rm ~/.git ~/.gitmodules

# install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap homebrew/services
brew install mysql redis mongodb git wget vim bash bash-completion
brew install caskroom/cask/brew-cask
brew cask install google-chrome sublime-text dropbox google-drive viscosity flux spotify istat-menus

