" Defaults
set encoding=utf-8      | " Default file encoding
set fileencoding=utf-8  | " Default file encoding
set fileencodings=utf-8 | " Default file encoding
set noerrorbells
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set incsearch
set nobackup
set nowritebackup
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
" yank in vim and then paste to other programs
set clipboard+=unnamedplus
set number
set splitright
set relativenumber
let mapleader = " "
let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
syntax on

" File specific settings
" ----------------------
" Javascript / Typescript / Vue
autocmd filetype javascript setlocal tabstop=4 softtabstop=4 shiftwidth=4 
autocmd filetype typescript setlocal tabstop=4 softtabstop=4 shiftwidth=4 

source $HOME/.config/nvim/settings/mappings.vim
