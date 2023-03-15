execute pathogen#infect()

set ffs=unix,dos
set encoding=utf8

" Use ONE clipboard : the system + register
set clipboard=unnamedplus

syntax enable
set background=dark
set nu

" set t_Co=256
" set term=xterm-256color
"colorscheme solarized8_dark
colorscheme dracula
"colorscheme bubblegum-256-light

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

"let g:go_fmt_command='goimportsif exists('g:go_loaded_install')
let g:go_fmt_command="goimports"
let g:go_metalinter_autosave=1
nnoremap gc :GoCallers<cr>
"restart gopls
" https://github.com/fatih/vim-go/issues/2550#issuecomment-545923505
nnoremap <leader>pls <esc>:call go#lsp#Exit()

"endif
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
"autocmd BufNewFile * :write
"

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

" https://github.com/dense-analysis/ale
" completion
let g:ale_completion_enabled = 1
" Only run linters named in ale_linters settings.
let g:ale_linters_explicit = 1
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'vue': ['eslint', 'vls'],
\   'python': ['flake8', 'pylint'],
\   'yaml': ['yamllint'],
\   'cpp': ['ccls'],
\}

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\}

au BufWrite * ALEFix


" js prettier
"autocmd FileType javascript set formatprg=prettier-eslint\ --stdin
"autocmd FileType vue set formatprg=eslint --ext .js,.vue\ --stdin
"autocmd BufWritePre *.js  :normal gggqG
"autocmd BufWritePre *.vue  :normal gggqG
"
"
nmap ,cs :let @*=expand("%")<CR>

" Jedi
let g:jedi#usages_command = "gu"
let g:jedi#popup_on_dot = 0
let g:jedi#show_call_signatures = ""


"default spaces
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
