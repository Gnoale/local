execute pathogen#infect()

" Use Unix as the standard file type
set ffs=unix,dos,mac
set encoding=utf8

" Use ONE clipboard : the system + register
set clipboard=unnamedplus

" Enable syntax highlighting
"syntax enable
"set background=dark

" Use xterm settings
set t_Co=256

colorscheme solarized8_dark
set bs=2

" 1 tab == n spaces
set shiftwidth=2
set tabstop=2
set expandtab
		
" Linebreak on 500 characters
set lbr
set tw=500

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
