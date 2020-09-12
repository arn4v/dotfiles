" vim plug stuff
call plug#begin('~/.config/nvim/plugged')
    Plug 'Yggdroot/indentLine'
    Plug 'honza/vim-snippets'
    Plug 'itchyny/vim-cursorword'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'luochen1990/rainbow'
    Plug 'preservim/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFocus'] }
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-fugitive'
    Plug 'machakann/vim-sandwich'
    Plug 'rstacruz/vim-closer'
    Plug 'alvan/vim-closetag'

    " Language Plugins
    Plug 'HerringtonDarkholme/yats.vim', { 'for': 'typescript' }
    Plug 'MaxMEllon/vim-jsx-pretty', { 'for': ['javascript', 'typescript'] }
    Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
    " Plug 'neovim/nvim-lspconfig'
    " Plug 'Shougo/deoplete-lsp'
    " Plug 'Shougo/deoplete.nvim'
    " Plug 'nvim-lua/completion-nvim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
    Plug 'sheerun/vim-polyglot'
    " if has('nvim-0.5')
    "     Plug 'nvim-treesitter/nvim-treesitter'
    "     source $NVIM_CONFIG_DIR/plugins/treesitter.vim
    " endif

    """ themes
    Plug 'gruvbox-community/gruvbox'
    Plug 'sainnhe/gruvbox-material'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
call plug#end()

source $NVIM_CONFIG_DIR/plugins/airline.vim
source $NVIM_CONFIG_DIR/plugins/coc.vim
source $NVIM_CONFIG_DIR/plugins/nerdtree.vim
source $NVIM_CONFIG_DIR/plugins/fzf.vim
