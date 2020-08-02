let g:lightline = {'colorscheme' : 'horizon'}
set termguicolors
colorscheme horizon
set number
call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dart-lang/dart-vim-plugin'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'ntk148v/vim-horizon'
call plug#end()
