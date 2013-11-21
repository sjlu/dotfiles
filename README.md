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
    
4. Run the install script.

        cd .dotfiles
        ./install.sh

