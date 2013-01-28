runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

set nocompatible
set hidden
set history=10000
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set laststatus=2
"set showmatch
set incsearch
set hlsearch
set ignorecase smartcase
set cursorline
set cmdheight=2
set showtabline=2
set number
set numberwidth=5
set shell=bash
set switchbuf=useopen
set scrolloff=3
set showcmd
set backspace=indent,eol,start
set encoding=utf-8
set nowrap
set ruler

set directory=~/.vim/swap,.,/tmp
set backupdir=~/.vim/backup,.,/tmp

syntax on
filetype plugin indent on

set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=0

set wildignore=*/cache/*,*/app/cache/*,*/web/bundles/*,.git,.svn

let mapleader=","
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

imap <Left> <Nop>
imap <Right> <Nop>
imap <Up> <Nop>
imap <Down> <Nop>

cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%
map <leader>v :view %%

set pastetoggle=<F2>

" unset the ridiculous 'style' warnings for syntastic
let g:syntastic_phpcs_disable=1
let g:syntastic_phpmd_disable=1

" auto-compile less files
"autocmd BufWritePost *.less silent !lessc "<afile>:p" "<afile>:p:h/../css/<afile>:t:r.css"
