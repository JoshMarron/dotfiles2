" Plugins et al.
call plug#begin('~/.local/share/nvim/plugged')

Plug 'ctrlpvim/ctrlp.vim'
Plug 'google/vim-searchindex'
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'tomasiser/vim-code-dark'
Plug 'Raimondi/delimitMate'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'ludovicchabant/vim-gutentags'
Plug 'majutsushi/tagbar'
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}

call plug#end()

" Appearance
set background=dark
colorscheme codedark
set colorcolumn=80

" Basic QoL bits
let mapleader=","
syntax on

set autoindent
set expandtab
set softtabstop=4
set shiftwidth=4
set shiftround

set showmode
set showcmd

set incsearch
set hlsearch

set splitbelow
set splitright

set cursorline
set wrapscan
set report=0

set list
set number
set relativenumber
nnoremap <Leader>r :setlocal relativenumber!<CR>
nnoremap <Leader>z :StripWhitespace<CR>

" ; for commands, jj to go to normal mode
map ; :
imap jj <Esc>

" Split navigation
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>

" NERDTree
map <Leader>n :NERDTreeToggle<CR>

let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeDirArrows = 1
let NERDTreeShowHidden = 1
let g:NERDTreeDirArrowExpandable = "+"
let g:NERDTreeDirArrowCollabsible = "-"

" CtrlP Ignores
let g:ctrlp_custom_ignore = 'cmake-build'

" CoC Bits
nmap <Leader>rn <Plug>(coc-refactor)
nmap gd <Plug>(coc-definition)
nmap gr <Plug>(coc-references)
