" vim plug stuff
call plug#begin()
    Plug 'airblade/vim-gitgutter'
    Plug 'dart-lang/dart-vim-plugin'
    " Plug 'gabrielelana/vim-markdown'
    Plug 'honza/vim-snippets'
    Plug 'junegunn/goyo.vim'
    Plug 'leafgarland/typescript-vim'
    Plug 'mattn/emmet-vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'pangloss/vim-javascript'
    Plug 'preservim/nerdtree'
    Plug 'udalov/kotlin-vim'
    Plug 'prettier/vim-prettier', {
      \ 'do': 'yarn install',
      \ 'branch': 'release/0.x'
      \ }
    """
    " Plug 'itchyny/vim-cursorword'
    " Plug 'ripxorip/aerojump.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'TaDaa/vimade'
    Plug 'Yggdroot/indentLine'
    Plug 'chrisbra/unicode.vim'
    Plug 'jeffkreeftmeijer/vim-numbertoggle'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'junegunn/vim-easy-align'
    Plug 'luochen1990/rainbow'
    Plug 'mbbill/undotree'
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'plasticboy/vim-markdown'
    Plug 'sheerun/vim-polyglot'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-sleuth'

    """ themes
    Plug 'colepeters/spacemacs-theme.vim'
    Plug 'flazz/vim-colorschemes'
    Plug 'junegunn/limelight.vim'
    Plug 'morhetz/gruvbox'
    Plug 'ntk148v/vim-horizon'
    Plug 'phanviet/vim-monokai-pro'
    Plug 'sainnhe/gruvbox-material'
    Plug 'vim-airline/vim-airline'
    Plug 'kaicataldo/material.vim', { 'branch': 'main' }
call plug#end()

" source $HOME/.config/nvim/plugins/aerojump.vim
source $HOME/.config/nvim/plugins/coc.vim
source $HOME/.config/nvim/plugins/easy-align.vim
source $HOME/.config/nvim/plugins/goyo.vim
source $HOME/.config/nvim/plugins/indentline.vim
source $HOME/.config/nvim/plugins/limelight.vim
source $HOME/.config/nvim/plugins/nerdtree.vim
source $HOME/.config/nvim/plugins/rainbow.vim
