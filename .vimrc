runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

set nocompatible
set hidden
set history=100
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set laststatus=2
"set showmatch
set incsearch
set nohlsearch
set ignorecase smartcase
set cursorline
set cmdheight=2
set showtabline=2
set number
set numberwidth=5
set colorcolumn=80
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
set undodir=~/.vim/undo,.,/tmp
set undofile
set undolevels=1000
set undoreload=10000

syntax on
colorscheme jellybeans
filetype plugin indent on

set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=0

set wildignore=.git,.svn,node_modules

let mapleader=","
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>
map <Home> <Nop>
map <End> <Nop>
map <Del> <Nop>

imap <Left> <Nop>
imap <Right> <Nop>
imap <Up> <Nop>
imap <Down> <Nop>
imap <Home> <Nop>
imap <End> <Nop>
imap <Del> <Nop>

cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%
map <leader>v :view %%

set pastetoggle=<F2>

" unset the ridiculous 'style' warnings for syntastic
let g:syntastic_phpcs_disable=1
let g:syntastic_phpmd_disable=1

" ctrl-p
let g:ctrlp_match_window_reversed=0
let g:ctrlp_working_path_mode=0
let g:ctrlp_max_depth=40
let g:ctrlp_max_files=100000

" auto-compile less files
"autocmd BufWritePost *.less silent !lessc "<afile>:p" "<afile>:p:h/../css/<afile>:t:r.css"
"autocmd BufWritePost *.coffee silent !coffee -c -o "<afile>:p:h/../js/" "<afile>:p"

" trim trailing whatspace
function! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfunction

autocmd FileType php,less,css,html,html.twig,javascript autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()
