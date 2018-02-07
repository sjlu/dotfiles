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

# If Homebrew, do these commands.
if [ -f /usr/local/bin/brew ]; then
  export HOMEBREW_CASK_OPTS="--appdir=/Applications" 

  # OSX bash completion
  if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
  fi

  # nvm
  if [ -f `brew --prefix nvm`/nvm.sh ]; then
    export NVM_DIR="$HOME/.nvm"
    . "$(brew --prefix nvm)/nvm.sh"
  fi

  # gcloud
  if [ -f /opt/homebrew-cask/Caskroom/google-cloud-sdk ]; then
    # The next line updates PATH for the Google Cloud SDK.
    source '/opt/homebrew-cask/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc'

    # The next line enables shell command completion for gcloud.
    source '/opt/homebrew-cask/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc'
  fi

  # Python
  if [ -f /usr/local/opt/python/libexec/bin ]; then
    export PATH="/usr/local/opt/python/libexec/bin:$PATH"
    export WORKON_HOME=$HOME/.virtualenvs
    export PIP_VIRTUALENV_BASE=$WORKON_HOME
    export PIP_RESPECT_VIRTUALENV=true
  fi
fi


