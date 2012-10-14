" Pathogen stuff
call pathogen#infect()
call pathogen#helptags()

set t_Co=256
" colorscheme desert256
colorscheme tir_black
" colorscheme solarized 
set background=dark
set number
set shortmess=atI
set ts=3
set sw=3 et
set shiftwidth=3
set softtabstop=3
:set wrap
:set linebreak
:set nolist

syntax on
filetype plugin on

set expandtab
:syn on
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif 
endif

set showcmd          " Show (partial) command in status line. 
set showmatch        " Show matching brackets.
set ignorecase       " Do case insensitive matching
set smartcase        " Do smart case matching
set incsearch        " Incremental search
set autowrite        " Automatically save before commands like :next and :make
set hidden           " Hide buffers when they are abandoned
set nocompatible

" powerline
set laststatus=2
" set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
let g:Powerline_symbols = 'fancy'

set wildmenu      " bette rmenu or something
set backspace=2   " indent over EOLs
set autoindent    " keep indentation level
set confirm       " dialog asking to confirm things isntead of error

" cursor highlighting
set cursorline
set cursorcolumn

" some key rebindings
:command -bang Q quit<bang>
:command -bang W write<bang>
