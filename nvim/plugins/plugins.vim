" vim plug stuff
call plug#begin()
     Plug 'preservim/nerdtree'
     Plug 'ntk148v/vim-horizon'
     Plug 'airblade/vim-gitgutter'
     Plug 'SirVer/ultisnips'
     Plug 'honza/vim-snippets'
     Plug 'pangloss/vim-javascript'
     Plug 'junegunn/goyo.vim'
     Plug 'junegunn/limelight.vim'
     Plug 'neoclide/coc.nvim', {'branch': 'release'}
     Plug 'udalov/kotlin-vim'
     Plug 'dart-lang/dart-vim-plugin'
"     Plug 'psf/black'
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
    Plug 'vuciv/vim-bujo'
call plug#end()

