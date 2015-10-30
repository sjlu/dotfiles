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
brew tap caskroom/versions
brew cask install google-chrome sublime-text3 dropbox google-drive flux spotify istat-menus 1password mattr-slate

# install slate to launch item
osascript -e 'tell application "System Events" to make login item at end with properties {path:"/Applications/Slate.app", hidden:true, name:"Slate"}'
open /Applications/Slate.app
