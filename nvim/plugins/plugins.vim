" vim plug stuff
call plug#begin()
    Plug 'preservim/nerdtree'
    Plug 'airblade/vim-gitgutter'
"    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'pangloss/vim-javascript'
    Plug 'junegunn/goyo.vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'udalov/kotlin-vim'
    Plug 'leafgarland/typescript-vim'
    Plug 'dart-lang/dart-vim-plugin'
"    Plug 'psf/black'
    Plug 'prettier/vim-prettier', {
      \ 'do': 'yarn install',
      \ 'branch': 'release/0.x'
      \ }
    " Fuzzy file finder
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'luochen1990/rainbow'
    Plug 'sheerun/vim-polyglot'
    Plug 'mbbill/undotree'
    Plug 'TaDaa/vimade'
    Plug 'tpope/vim-commentary'
    " Plug 'ripxorip/aerojump.nvim', { 'do': ':UpdateRemotePlugins' }

    " Themes
    Plug 'ntk148v/vim-horizon'
    Plug 'colepeters/spacemacs-theme.vim'
    Plug 'sainnhe/gruvbox-material'
    Plug 'phanviet/vim-monokai-pro'
    Plug 'vim-airline/vim-airline'
    Plug 'flazz/vim-colorschemes'
    Plug 'junegunn/limelight.vim'
    Plug 'morhetz/gruvbox'
call plug#end()

" source $HOME/.config/nvim/plugins/aerojump.vim
source $HOME/.config/nvim/plugins/coc.vim
source $HOME/.config/nvim/plugins/goyo.vim
source $HOME/.config/nvim/plugins/limelight.vim
source $HOME/.config/nvim/plugins/nerdtree.vim
source $HOME/.config/nvim/plugins/rainbow.vim
