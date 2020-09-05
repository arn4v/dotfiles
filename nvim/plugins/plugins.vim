" vim plug stuff
call plug#begin('~/.config/nvim/plugged')
    " Plug 'davidhalter/jedi-vim'
    " Plug 'vim-syntastic/syntastic'
    Plug 'TaDaa/vimade'
    Plug 'Yggdroot/indentLine'
    Plug 'honza/vim-snippets'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'leafgarland/typescript-vim'
    Plug 'luochen1990/rainbow'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'pangloss/vim-javascript'
    Plug 'preservim/nerdtree'
    Plug 'sheerun/vim-polyglot'
    Plug 'tpope/vim-commentary'
    Plug 'itchyny/vim-cursorword'
    if has('nvim-0.5') && g:is_linux || g:is_mac
        Plug 'nvim-treesitter/nvim-treesitter'
        Plug 'ThePrimeagen/vim-apm'
    endif

    if g:is_win || g:is_win
        Plug 'HerringtonDarkholme/yats.vim'
    endif

    """ themes
    Plug 'gruvbox-community/gruvbox'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'vim-airline/vim-airline'
call plug#end()

" source $HOME/.config/nvim/plugins/indentline.vim
" source $HOME/.config/nvim/plugins/rainbow.vim
" source $HOME/.config/nvim/plugins/syntastic.vim
source $HOME/.config/nvim/plugins/airline.vim
source $HOME/.config/nvim/plugins/coc.vim
source $HOME/.config/nvim/plugins/fzf.vim
source $HOME/.config/nvim/plugins/nerdtree.vim

if has('nvim-0.5') && g:is_linux || g:is_mac
    source $HOME/.config/nvim/plugins/treesitter.vim
endif
