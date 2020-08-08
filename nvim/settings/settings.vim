" Defaults
set encoding=utf-8      | " Default file encoding
set fileencoding=utf-8  | " Default file encoding
set fileencodings=utf-8 | " Default file encoding
set noerrorbells
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set incsearch
set nobackup
set nowritebackup
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
" yank in vim and then paste to other programs
set clipboard+=unnamedplus
set number
set relativenumber

" File specific settings
" ----------------------
" Javascript / Typescript / Vue
autocmd filetype javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2 
autocmd filetype typescript setlocal tabstop=2 softtabstop=2 shiftwidth=2 


" Remap HJKL
" noremap h <Nop>
" noremap ; l
" noremap j k
" noremap k j
" noremap l h

" Disable the arrow keys
noremap <Up> <Nop>
noremap <Right> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
