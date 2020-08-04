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
Plug 'flazz/vim-colorschemes'
Plug 'tikhomirov/vim-glsl'
Plug 'sheerun/vim-polyglot'
Plug 'w0ng/vim-hybrid'
Plug 'arcticicestudio/nord-vim'
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}

call plug#end()

set termguicolors

" Appearance
set background=dark
colorscheme nord
set colorcolumn=85

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
let g:ctrlp_custom_ignore = 'build\|.ccls-cache\|vcpkg'

" Tagbar
set statusline+=%{gutentags#statusline()}

nmap <Leader>t :TagbarToggle<CR>
let g:tagbar_autofocus=1

" CoC Bits
nmap <Leader>rn <Plug>(coc-refactor)
nmap gd <Plug>(coc-definition)
nmap gr <Plug>(coc-references)

" Lightline configuration
let g:lightline = {
\   'colorscheme': 'nord'
\}

" clang-format on write!
function! Formatonsave()
    let l:formatdiff = 1
    py3f /usr/share/clang/clang-format.py
endfunction
autocmd BufWritePre *.h,*.cc,*.cpp,*.c call Formatonsave()

" clang-format command
nmap <Leader>f :py3f /usr/share/clang/clang-format.py<CR>
