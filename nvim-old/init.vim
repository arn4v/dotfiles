" vim plug stuff
call plug#begin()
Plug 'preservim/nerdtree'
Plug 'ntk148v/vim-horizon'
Plug 'airblade/vim-gitgutter'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'dart-lang/dart-vim-plugin'
Plug 'pangloss/vim-javascript'
Plug 'ycm-core/YouCompleteMe'
Plug 'dylanaraps/wal.vim'
Plug 'junegunn/fzf'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dart-lang/dart-vim-plugin'
call plug#end()

" yank in vim and then paste to other programs
set clipboard+=unnamedplus
set number

" ======= Plug 'junegunn/limelight.vim' ======

" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
" We must have this set of we will see the following error:
"   Unsupported color scheme. g:limelight_conceal_ctermfg required.
" Note: I have also haven't found what this configures

" What color the unfocused text should be
" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = '#777777'
" We must have this set of we will see the following error:
"   Cannot calculate background color.

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1


" ====== Plug 'junegunn/goyo.vim' ======

" We always want to use Goyo when using limelight
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
noremap <leader>gg :Goyo<cr>

" Theme Stuff
set termguicolors
colorscheme horizon
let g:lightline = {'colorscheme' : 'horizon'}
let mapleader = ","
nmap <leader>ne :NERDTree<cr>
