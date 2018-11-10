if has('win32')
    call plug#begin('$LOCALAPPDATA/nvim/plugged')
else
    call plug#begin('~/.local/share/nvim/plugged')
endif

Plug 'nanotech/jellybeans.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-syntastic/syntastic'
Plug 'SirVer/ultisnips'
Plug 'sniphpets/sniphpets'
Plug 'StanAngeloff/php.vim'
Plug 'lumiliet/vim-twig'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

call plug#end()

colorscheme jellybeans

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set cursorline
set cmdheight=2
set showtabline=2
set number
set numberwidth=5
set colorcolumn=80
set scrolloff=3
set nowrap
set nohlsearch
set ignorecase smartcase

set undofile

set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=0
set ffs=unix,dos

let mapleader=','
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

" should probably set a directory separator variable rather than this
if has('win32')
    cnoremap %% <C-R>=expand('%:h').'\'<cr>
else
    cnoremap %% <C-R>=expand('%:h').'/'<cr>
endif

let g:ctrlp_match_window_reversed=0
let g:ctrlp_working_path_mode=0
let g:ctrlp_max_depth=40
let g:ctrlp_max_files=100000
let g:ctrlp_custom_ignore='\v[\/](node_modules|var)$'

let g:syntastic_phpcs_disable=1
let g:syntastic_phpmd_disable=1

let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger='<c-b>'
let g:UltiSnipsJumpBackwardTrigger='<c-z>'
let g:ultisnips_php_scalar_types=1
let g:sniphpets_namespace_prefix='App'
let g:snips_author='John Noel <john.noel@chaostangent.com>'
