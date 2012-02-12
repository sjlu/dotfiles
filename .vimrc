set t_Co=256
" colorscheme desert256
colorscheme tir_black
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

" set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

set wildmenu      " bette rmenu or something
set backspace=2   " indent over EOLs
set autoindent    " keep indentation level
set confirm       " dialog asking to confirm things isntead of error

hi StatusLine term=reverse ctermfg=0 ctermbg=2 gui=bold,reverse

" use pathogen
filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin on
syntax on

" nerdtree stuffs
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
autocmd vimenter * if !argc() | NERDTree | endif

" php stuffs (PIV)
let g:DisableAutoPHPFolding = 1

" indent-guides stuff
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 0
:hi IndentGuidesOdd  ctermbg=234
:hi IndentGuidesEven ctermbg=236

" cursor highlighting
hi CursorLine     cterm=NONE ctermbg=17
hi CursorColumn   cterm=NONE ctermbg=17
set cursorline!
set cursorcolumn!

" auto syntax check
" let g:checksyntax_auto = 1

" some key rebindings
:command -bang Q quit<bang>
:command -bang W write<bang>
