## About

My primary computers are a Macbook Pro and a Linux desktop running Ubuntu. I like to have the terminals looks similar despite the OS jumps. So I made these dotfiles so I can have a unique and similar feel across all my computers.

## Installation

1. Clone the repository.

        git clone https://github.com/sjlu/dotfiles.git .dotfiles

2. If you're using a Mac, install the fonts, then install the Terminal theme (remember to default it).

        open .dotfiles/fonts/*.ttf
        open .dotfiles/IR_Black.terminal
    
3. Make a symbolic link into your home folder.

        ln -s .dotfiles/.* ~/
        rm -rf ~/.git