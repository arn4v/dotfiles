let g:is_win = has('win32') || has('win64')
let g:is_linux = has('unix') && !has('macunix')
let g:is_mac = has('macunix')

" =============================================================================
" # PLUGINS
" =============================================================================
call plug#begin('~/.config/nvim/plugged')
    Plug 'Yggdroot/indentLine'
    Plug 'airblade/vim-rooter'
    Plug 'dkarter/bullets.vim', { 'for': ['markdown', 'gitcommit', 'text'] }
    Plug 'itchyny/vim-cursorword'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'luochen1990/rainbow'
    Plug 'preservim/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTree', 'NERDTreeFocus'] }
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-fugitive'

    " Plug 'jiangmiao/auto-pairs'
    " Plug 'kevinoid/vim-jsonc', { 'for': 'jsonc' }
    Plug 'HerringtonDarkholme/yats.vim', { 'for': ['typescript', 'typescript.tsx'] }
    Plug 'MaxMEllon/vim-jsx-pretty', { 'for': ['javascript.jsx', 'typescript.tsx'] }
    Plug 'alvan/vim-closetag', { 'for': ['html', 'php', 'javascript', 'javascript.jsx', 'typescript', 'typescript.tsx'] }
    Plug 'davidhalter/jedi-vim', { 'for': ['python']}
    Plug 'honza/vim-snippets'
    Plug 'leafgarland/typescript-vim', { 'for': ['typescript', 'typescript.tsx'] }
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'pangloss/vim-javascript', { 'for': ['javascript','javascript.jsx'] }
    Plug 'dart-lang/dart-vim-plugin', { 'for': ['dart'] }
    Plug 'thosakwe/vim-flutter', { 'for': ['dart'] }
    Plug 'neoclide/jsonc.vim', { 'for': ['jsonc'] }
    Plug 'f-person/pubspec-assist-nvim'

    Plug 'sainnhe/gruvbox-material'
    " Plug 'adigitoleo/vim-mellow'
    Plug 'ryanoasis/vim-devicons'
call plug#end()

" =============================================================================
" # SETTINGS
" =============================================================================
" au CursorHold,CursorHoldI * set clipboard+=unnamedplus
" set clipboard=unnamedplus
let g:mapleader=" "
let mapleader=" "
syntax on
filetype plugin indent on 
set autoread
set hidden
set hlsearch
set ignorecase
set incsearch
set nobackup
set noerrorbells
set noswapfile
set nowrap
set nowritebackup
set smartcase
set smartindent
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
set undodir=~/.config/nvim/undodir
set backspace=indent,eol,start
xnoremap Y "+y
set completeopt=menuone,noinsert,noselect
set shortmess+=c

" =============================================================================
" # GUI SETTINGS
" =============================================================================
" let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
" let base16colorspace=256  
let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
highlight ColorColumn ctermbg=0 guibg=lightgrey
set colorcolumn=80
set number
set relativenumber
set mouse=a
set splitbelow splitright

if has('nvim') || has('termguicolors')
    set termguicolors
endif

if !has('gui_running')
    set t_Co=256
endif

" =============================================================================
" # KEYMAPS
" =============================================================================
nnoremap <leader>rv :vertical resize 100<CR>
nnoremap <leader>rh :resize 100<CR>

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
vnoremap X "_d

" because some reason I heard from Primeagen
inoremap <C-c> <esc>
tnoremap <Esc> <C-\><C-n>

" CTRL-S Save
nnoremap <C-s> :w<CR>
noremap <C-s> <C-o>:w<CR>

" Disable the arrow keys
nnoremap <Right> :vertical resize +5<CR>
nnoremap <Left> :vertical resize -5<CR>
nnoremap <Up> :resize +5<CR>
nnoremap <Down> :resize -5<CR>

" Tab navigation like Firefox.
nnoremap <leader>t :tabprevious<CR>
nnoremap <C-t>     :tabnew<CR>

" Vim Splits
nnoremap <C-j> <C-W><C-J>
nnoremap <C-k> <C-W><C-K>
nnoremap <C-l> <C-W><C-L>
nnoremap <C-h> <C-W><C-H>

" Create new line without leaving normal mode
nnoremap <leader>j o<Esc>k
nnoremap <leader>k O<Esc>j

" Clear selection on ,c
nnoremap <M-h> :noh<CR>
nnoremap <leader>n :set relativenumber!<cr>

tnoremap <Esc> <C-\><C-n>
tnoremap <C-k> <C-\><C-n>

function! OpenTerminal()
    if g:is_win
        split term://powershell
    else
        split term://zsh
    endif
    resize 10
endfunction
nnoremap <M-`> :call OpenTerminal()<CR>

" =============================================================================
" # THEMES
" =============================================================================
let g:gruvbox_material_background = 'hard'
colorscheme gruvbox-material
" set background=light
" colorscheme mellow

" =============================================================================
" # Plug 'preservim/nerdtree'
" =============================================================================
let g:NERDTreeIgnore = ['^node_modules$']
let NERDTreeShowHidden=1
map <silent> <C-n> :NERDTreeToggle<CR>

" =============================================================================
" # Plug 'junegunn/fzf.vim'
" =============================================================================
" inoremap <expr> <S-space> search('\%#[]>)}''"`]', 'n') ? '<Right>' : '<Tab>'    
" nnoremap <C-p> :Files<CR>
" nnoremap <leader>f :GFiles<CR>
nmap <leader>/ :Rg<CR>
nmap <leader>b :Buffers<CR>
nmap <leader>c :Commands<CR>
nmap <leader>gc :Commits<CR>
nnoremap <expr> <C-p> (len(system('git rev-parse')) ? ':Files' : ':GFiles --exclude-standard --others --cached')."\<cr>"

" =============================================================================
" # Plug 'luochen1990/rainbow'
" =============================================================================
let g:rainbow_active = 1

" =============================================================================
" # Plug 'alvan/vim-closetag'
" =============================================================================
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.tsx'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.js,*.ts,*.tsx'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }


" =============================================================================
" # Plug 'nvim-treesitter/nvim-treesitter'
" =============================================================================
" lua << EOF
" require'nvim-treesitter.configs'.setup {
"   ensure_installed = { "javascript", "typescript", "lua", "json", "jsdoc", 
"                        "tsx", "python", "css", "html", "bash" },
"   highlight = {
"     enable = true,
"   },
" }
" EOF

" =============================================================================
" # Plug 'Yggdroot/indentLine'
" =============================================================================
let g:indentLine_enabled = 1
au Filetype json let indentLine_enabled = 0

" =============================================================================
" # Plug 'airblade/vim-rooter'
" =============================================================================
let g:rooter_silent_chdir = 1

" =============================================================================
" Plug 'dkarter/bullets.vim'
" =============================================================================
let g:bullets_enabled_file_types = [
    \ 'markdown',
    \ 'text',
    \ 'gitcommit',
    \ 'scratch'
    \]
let g:bullets_enable_in_empty_buffers = 0 " default = 1

" =============================================================================
" # FILETYPE SPECIFIC
" =============================================================================
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4
autocmd BufNewFile,BufRead *.jsx set filetype=javascript.jsx
autocmd BufNewFile,BufRead *.tsx set filetype=typescript.tsx
autocmd BufNewFile,BufRead tsconfig.json set filetype=jsonc
autocmd Filetype markdown setlocal textwidth=80

" source $NVIM_CONFIG_DIR/plugins/nvim-lsp.vim
source $NVIM_CONFIG_DIR/plugins/coc.vim
