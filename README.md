## Dotfiles

Dotfiles, nothing more to say here.

### Installation

1. Clone the repository.

        git clone --recursive https://github.com/sjlu/dotfiles.git .dotfiles

2. Install the Terminal theme.

        open .dotfiles/IR_Black.terminal
        
3. Install Homebrew and dependencies.

        ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
        brew install screen
    
4. Make a symbolic link into your home folder.

        rm .profile .bash_profile
        ln -s .dotfiles/.* ~/
        rm -rf ~/.git ~/.gitmodules
