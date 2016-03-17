#!/bin/bash

# install those dotfiles
rm ~/.profile ~/.bashrc
ln -s ~/.dotfiles/.* ~/
rm ~/.git ~/.gitmodules

