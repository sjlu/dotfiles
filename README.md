## About

My primary computers are a Macbook Pro and a Linux desktop running Ubuntu. I like to have the terminals looks similar despite the OS jumps. So I made these dotfiles so I can have a unique and similar feel across all my computers.

## Installation

1. Clone the repository.

        git clone https://github.com/sjlu/dotfiles.git .dotfiles

2. If you're using a Mac, install the fonts, then install the Terminal theme (remember to default it). Alternatively, you can use "Menlo" font on Mac if you're uncomfortable with installing these fonts. Note that you do so after when you install the `IR_Black.terminal` file.

        open .dotfiles/fonts/*.ttf
        open .dotfiles/IR_Black.terminal
        
3. If you're using a Mac, I'd suggest installing homebrew and Mac vim.

        /usr/bin/ruby -e "$(/usr/bin/curl -fsSL https://raw.github.com/mxcl/homebrew/master/Library/Contributions/install_homebrew.rb)"
        homebrew install macvim
    
4. Make a symbolic link into your home folder.

        ln -s .dotfiles/.* ~/
        rm -rf ~/.git
