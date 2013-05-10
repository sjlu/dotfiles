TERM=xterm-256color
export EDITOR=vim
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# History settings
HISTCONTROL=ignoreboth
shopt -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.bash_prompt ]; then
    source ~/.bash_prompt
fi

if [ -f ~/.bash_exports ]; then
    source ~/.bash_exports
fi

# OSX bash completion
if [ -f /usr/local/bin/brew ]; then
   if [ -f `brew --prefix`/etc/bash_completion ]; then
      . `brew --prefix`/etc/bash_completion
   fi
fi
