" vim plug stuff
call plug#begin('~/.config/nvim/plugged')
    " Plug 'Yggdroot/indentLine'
    Plug 'HerringtonDarkholme/yats.vim'
    Plug 'TaDaa/vimade'
    Plug 'davidhalter/jedi-vim'
    Plug 'honza/vim-snippets'
    " Plug 'itchyny/vim-cursorword'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'leafgarland/typescript-vim'
    Plug 'luochen1990/rainbow'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'pangloss/vim-javascript'
    Plug 'preservim/nerdtree'
    Plug 'sheerun/vim-polyglot'
    Plug 'tpope/vim-commentary'

    """ themes
    Plug 'gruvbox-community/gruvbox'
    Plug 'vim-airline/vim-airline'
call plug#end()

source $HOME/.config/nvim/plugins/coc.vim
" source $HOME/.config/nvim/plugins/indentline.vim
source $HOME/.config/nvim/plugins/nerdtree.vim
source $HOME/.config/nvim/plugins/rainbow.vim
source $HOME/.config/nvim/plugins/fzf.vim
