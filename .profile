# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# Node.js
PATH="/usr/local/share/npm/bin:/usr/local/sbin:/usr/local/bin:$PATH"

# PHP on Mac OS X
if [ -f /usr/local/bin/brew ]; then
  PATH="$(brew --prefix josegonzalez/php/php54)/bin:$PATH"
fi


# Ruby
if [ -f /usr/local/bin/rbenv ]; then
   PATH="$HOME/.rbenv/bin:$PATH"
   eval "$(rbenv init -)"
fi

# Python
PATH="/usr/local/share/python:$PATH"
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
if [[ -r /usr/local/bin/virtualenvwrapper.sh ]]; then
  source /usr/local/bin/virtualenvwrapper.sh
fi

export GITROOT=$HOME/Development
export CREDENTIALS_FILE=$HOME/.uc-aws-credentials
