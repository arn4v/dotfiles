" Settings
" au CursorHold,CursorHoldI * set clipboard+=unnamedplus
" set clipboard=unnamedplus
" set nu
" yank in vim and then paste to other programs
highlight ColorColumn ctermbg=0 guibg=lightgrey
let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
let g:mapleader=" "
let mapleader=" "
syntax on
filetype plugin indent on 
set colorcolumn=80
set expandtab
set hidden
set hlsearch
set ignorecase
set incsearch
set mouse=a
set nobackup
set noerrorbells
set noswapfile
set nowrap
set nowritebackup
set number
set relativenumber
set shiftwidth=4
set smartcase
set smartindent
set splitbelow
set splitright
set tabstop=4 softtabstop=4
set termguicolors
set undodir=~/.config/nvim/undodir
set backspace=indent,eol,start
xnoremap Y "+y
" let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
" let base16colorspace=256  

source $NVIM_CONFIG_DIR/settings/mappings.vim
