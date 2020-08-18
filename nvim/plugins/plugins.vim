" vim plug stuff
call plug#begin('~/.config/nvim/plugged')
    " Plug 'prettier/vim-prettier', {
    "   \ 'do': 'yarn install',
    "   \ 'branch': 'release/0.x'
    "   \ }
    Plug 'heavenshell/vim-jsdoc', { 
                \ 'for': ['javascript', 'javascript.jsx','typescript'], 
                \ 'do': 'make install'
                \}
    " Plug 'SirVer/ultisnips'
    " Plug 'airblade/vim-gitgutter'
    " Plug 'chrisbra/unicode.vim'
    " Plug 'dart-lang/dart-vim-plugin'
    " Plug 'gabrielelana/vim-markdown'
    " Plug 'honza/vim-snippets'
    " Plug 'jeffkreeftmeijer/vim-numbertoggle'
    " Plug 'junegunn/goyo.vim'
    " Plug 'junegunn/limelight.vim'
    " Plug 'junegunn/vim-easy-align'
    " Plug 'leafgarland/typescript-vim'
    " Plug 'mattn/emmet-vim'
    " Plug 'norcalli/nvim-colorizer.lua'
    " Plug 'nvim-treesitter/nvim-treesitter'
    " Plug 'plasticboy/vim-markdown'
    " Plug 'ripxorip/aerojump.nvim', { 'do': ':UpdateRemotePlugins' }
    " Plug 'tpope/vim-sleuth'
    " Plug 'udalov/kotlin-vim'
    Plug 'TaDaa/vimade'
    Plug 'Yggdroot/indentLine'
    Plug 'davidhalter/jedi-vim'
    Plug 'itchyny/vim-cursorword'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'luochen1990/rainbow'
    Plug 'mbbill/undotree'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'pangloss/vim-javascript'
    Plug 'preservim/nerdtree'
    Plug 'sheerun/vim-polyglot'
    Plug 'tpope/vim-commentary'

    """ themes
    " Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
    " Plug 'colepeters/spacemacs-theme.vim'
    " Plug 'flazz/vim-colorschemes'
    " Plug 'kaicataldo/material.vim', { 'branch': 'main' }
    " Plug 'liuchengxu/space-vim-dark' 
    " Plug 'morhetz/gruvbox'
    " Plug 'ntk148v/vim-horizon'
    " Plug 'phanviet/vim-monokai-pro'
    " Plug 'sainnhe/gruvbox-material'
    Plug 'gruvbox-community/gruvbox'
    Plug 'vim-airline/vim-airline'
call plug#end()

" source $HOME/.config/nvim/plugins/aerojump.vim
" source $HOME/.config/nvim/plugins/easy-align.vim
" source $HOME/.config/nvim/plugins/goyo.vim
" source $HOME/.config/nvim/plugins/limelight.vim
" source $HOME/.config/nvim/plugins/ultisnips.vim
source $HOME/.config/nvim/plugins/coc.vim
source $HOME/.config/nvim/plugins/indentline.vim
source $HOME/.config/nvim/plugins/nerdtree.vim
source $HOME/.config/nvim/plugins/rainbow.vim
source $HOME/.config/nvim/plugins/fzf.vim
