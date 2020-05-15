execute pathogen#infect()
" Use Unix as the standard file type
set ffs=unix,dos,mac
set encoding=utf8

" Use ONE clipboard : the system + register
set clipboard=unnamedplus

syntax enable
set background=dark
set nu

set t_Co=256
set term=xterm-256color
"colorscheme solarized8_dark
colorscheme dracula
"colorscheme bubblegum-256-light
set bs=2

" 1 tab == n spaces
set shiftwidth=2
set tabstop=2
set expandtab
		
" Linebreak on 100 characters
set lbr
set tw=100

"set hlsearch
set incsearch
set ignorecase
set autoindent

filetype plugin indent on
set mouse=a

" hell bell
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
set noswapfile
