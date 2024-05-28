execute pathogen#infect()

set ffs=unix,dos
set encoding=utf8

" Use ONE clipboard : the system + register
set clipboard=unnamedplus

syntax enable
set background=dark
set nu

colorscheme dracula

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

au FileType python setlocal expandtab shiftwidth=4 softtabstop=4 tw=100

autocmd FileType markdown setlocal spell

let g:terraform_fmt_on_save=1
let g:hcl_align_save=1

"let g:autopep8_on_save = 1
"
" The hard way
" random mapping and leader
let mapleader = "-"
nnoremap <c-d> dd
"noremap <space> viw

" open and source .vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" cut and paste current line down or up
noremap <leader>- ddp
noremap _ ddk<S-p>

" save current file
noremap <leader>w :w<cr>


"abbrev is cool, find usefull ones ?
iabbrev waht what
iabbrev tehn then

"surround
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel
nnoremap <leader>` viw<esc>a`<esc>bi`<esc>lel
"surroung bold mapping only in MD file
"nnoremap <leader>* viw<esc>a**<esc>bi**<esc>lel

"newtab
nnoremap <leader>n <esc>:tabnew<space>

"" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

" Go to last active tab
au TabLeave * let g:lasttab = tabpagenr()
nnoremap <silent> <c-l> :exe "tabn ".g:lasttab<cr>
vnoremap <silent> <c-l> :exe "tabn ".g:lasttab<cr>

" super annoying plugin
"https://stackoverflow.com/questions/24931088/disable-omnicomplete-or-ftplugin-or-something-in-vim
let g:omni_sql_no_default_maps = 1
let g:ftplugin_sql_omni_key = '<Plug>DisableSqlOmni'


"nnoremap <silent> gd :ALEGoToDefinition<cr>
nnoremap <silent> gd :YcmCompleter GoTo<cr>
nnoremap <silent> gr :YcmCompleter GoToReferences<cr>
nnoremap <silent> gi :YcmCompleter GoToImplementation<cr>
nnoremap <silent> K :YcmCompleter GetDoc<cr>
nnoremap <silent> fi :YcmCompleter FixIt<cr>


"default spaces
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces

set expandtab
set backspace=indent,eol,start  " more powerful backspacing
