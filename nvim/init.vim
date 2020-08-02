" Always source these
source $HOME/.config/nvim/plugins/plugins.vim
source $HOME/.config/nvim/plugins/coc.vim
source $HOME/.config/nvim/themes/horizon.vim
" Defaults
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set incsearch
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
" yank in vim and then paste to other programs
set clipboard+=unnamedplus
set number

" Plug 'luochen1990/rainbow'
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

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

let NERDTreeShowHidden=1

" Theme Stuff
set termguicolors
let mapleader = ","
nmap <leader>ne :NERDTree<cr>


" File specific settings
" ----------------------
" Javascript / Typescript / Vue
autocmd filetype javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2 
autocmd filetype typescript setlocal tabstop=2 softtabstop=2 shiftwidth=2 


" Remap HJKL
"noremap h <Nop>
noremap ; l
noremap j k
noremap k j
noremap l h

" Disable the arrow keys
noremap <Up> <Nop>
noremap <Right> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
