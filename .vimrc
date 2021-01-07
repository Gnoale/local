execute pathogen#infect()
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
set noswapfile


set noswapfile

autocmd GUIEnter * set visualbell t_vb=

"let mapleader = "-"  
"nnoremap <leader>sv :source $MYVIMRC<cr> 
"nnoremap <leader>ev :vsplit $MYVIMRC<cr> 
" 
"inoremap <c-d> <esc>ddi 
"nnoremap <c-d> dd 
"noremap <leader>- ddp 
"noremap _ ddk<S-p> 
" 
"noremap <space> viw 
" 
"nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel 
" 
"nnoremap <leader>n <esc>:tabnew<space> 
""autocmd BufNewFile * :write 
" 
"augroup comment 
"        autocmd! 
"        autocmd FileType python nnoremap <buffer> <leader>c I#<esc> 
"        autocmd FileType javascript nnoremap <buffer> <leader>c I//<esc> 
"augroup END 

