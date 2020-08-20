syntax on

set guicursor=
" set encoding=utf-8      | " Default file encoding
" set fileencoding=utf-8  | " Default file encoding
" set fileencodings=utf-8 | " Default file encoding
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set incsearch
set nobackup
set undodir=~/.vim/undodir
set nowritebackup
set colorcolumn=80
set nohlsearch
highlight ColorColumn ctermbg=0 guibg=lightgrey
" yank in vim and then paste to other programs
set clipboard+=unnamedplus
set number
set splitright
" set relativenumber
let mapleader = " "
let $NVIM_TUI_ENABLE_TRUE_COLOR = 1

source $HOME/.config/nvim/settings/mappings.vim
