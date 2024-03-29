let g:is_win = has('win32') || has('win64')
let g:is_linux = has('unix') && !has('macunix')
let g:is_mac = has('macunix')

" =============================================================================
" # PLUGINS
" =============================================================================
call plug#begin('~/.config/nvim/plugged')
    Plug 'dkarter/bullets.vim', { 'for': ['markdown', 'gitcommit', 'text'] }
    Plug 'airblade/vim-rooter'
    Plug 'itchyny/vim-cursorword'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'luochen1990/rainbow'
    Plug 'preservim/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTree', 'NERDTreeFocus'] }
    Plug 'tpope/vim-commentary'
    Plug 'mattn/emmet-vim', {'for': ['javascript.jsx', 'html', 'typescript.tsx', 'javascriptreact', 'typescriptreact']}
    Plug 'tpope/vim-surround'


    " Plug 'f-person/pubspec-assist-nvim', { 'for': ['dart'] }
    Plug 'jiangmiao/auto-pairs'
    Plug 'heavenshell/vim-jsdoc', { 'for': ['javascript', 'javascript.jsx','typescript', 'typescript.tsx'], 'do': 'make install' }
    Plug 'HerringtonDarkholme/yats.vim', { 'for': ['typescript', 'typescript.tsx', 'typescriptreact'] }
    Plug 'MaxMEllon/vim-jsx-pretty', { 'for': ['javascript.jsx', 'typescript.tsx', 'typescriptreact'] }
    Plug 'alvan/vim-closetag', { 'for': ['html', 'php', 'javascript', 'javascript.jsx', 'typescript', 'typescript.tsx', 'javascriptreact', 'typescriptreact'] }
    Plug 'davidhalter/jedi-vim', { 'for': ['python']}
    Plug 'honza/vim-snippets'
    Plug 'leafgarland/typescript-vim', { 'for': ['typescript', 'typescript.tsx', 'typescriptreact'] }
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'neoclide/jsonc.vim', { 'for': ['jsonc'] }
    Plug 'pangloss/vim-javascript', { 'for': ['javascript','javascript.jsx', 'javascriptreact', 'typescriptreact'] }
    Plug 'pantharshit00/vim-prisma'
    " Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'jparise/vim-graphql'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    
    Plug 'sainnhe/gruvbox-material'
call plug#end()

" =============================================================================
" # SETTINGS
" =============================================================================
" au CursorHold,CursorHoldI * set clipboard+=unnamedplus
" set clipboard=unnamedplus
" let g:mapleader=";"
" let mapleader=";"
let g:onedark_termcolors=16
let g:mapleader=" "
let mapleader=" "
syntax enable
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
nnoremap <leader>y "+y 
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG

set completeopt=menuone,noinsert,noselect
set shortmess+=c

" =============================================================================
" # GUI SETTINGS
" =============================================================================
" let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
" let base16colorspace=256  
set t_Co=256
let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
highlight ColorColumn ctermbg=0 guibg=lightgrey
set colorcolumn=80
set number
set norelativenumber
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
nnoremap <leader>so :so %<CR>
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
" noremap <C-s> <C-o>:w<CR>

" Tab navigation like Firefox.
nnoremap <C-]> :tabnext<CR>
nnoremap <C-[> :tabprevious<CR>
nnoremap <leader>t :tabprevious<CR>
nnoremap <C-t>     :tabnew<CR>

" Vim Splits
nnoremap <C-j> <C-W><C-J>
nnoremap <C-k> <C-W><C-K>
nnoremap <C-l> <C-W><C-L>
nnoremap <C-h> <C-W><C-H>

" Disable the arrow keys
nnoremap <Right> :vertical resize +5<CR>
nnoremap <Left> :vertical resize -5<CR>
nnoremap <Up> :resize +5<CR>
nnoremap <Down> :resize -5<CR>

" Create new line without leaving normal mode
nnoremap <leader>j o<Esc>k
nnoremap <leader>k O<Esc>j

"Quick search n replace
noremap <leader>r  :%s///g<Left><Left>
noremap <leader>R  :%s///gc<Left><Left><Left>

" Clear selection on ,c
nnoremap <S-h> :noh<CR>
nnoremap <leader>n :set relativenumber!<cr>
nnoremap <leader>N :set number!<cr>
nnoremap <M-/> :Commentary<CR>
vnoremap <M-/> :Commentary<CR>

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
let g:tokyonight_style = 'storm' " available: night, storm
let g:tokyonight_enable_italic = 1
let g:gruvbox_material_background = 'hard'
colorscheme gruvbox-material
" let ayucolor = 'dark'
" colorscheme ayu

" =============================================================================
" # Plug 'preservim/nerdtree'
" =============================================================================
let g:NERDTreeIgnore = ['^node_modules$', '^.next$', '^.git$']
let NERDTreeShowHidden=1
map <silent> <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" =============================================================================
" # Plug 'junegunn/fzf.vim'
" =============================================================================
" inoremap <expr> <S-space> search('\%#[]>)}''"`]', 'n') ? '<Right>' : '<Tab>'    
" nnoremap <C-p> :Files<CR>
" nnoremap <leader>f :GFiles<CR>
" nmap <leader>/ :Rg<CR>
" nmap <leader>b :Buffers<CR>
" nmap <leader>c :Commands<CR>
" nmap <leader>gc :Commits<CR>
" nnoremap <expr> <C-p> (len(system('git rev-parse')) ? ':Files' : ':GFiles --exclude-standard --others --cached')."\<cr>"

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
" let g:indentLine_enabled = 1
" let g:indentLine_char = '▏'
" let g:indentLine_char = ''
" let g:indentLine_first_char = ''
" let g:indentLine_showFirstIndentLevel = 1
" let g:indentLine_setColors = 0
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
" # Plug 'vim-airline/vim-airline'
" =============================================================================
" unicode symbols
" let g:airline_powerline_fonts = 1
" let g:airline_theme = 'tomorrow'
" let g:airline_exclude_filetypes = ['unite']
" let g:airline#extensions#hunks#non_zero_only = 1
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#show_buffers = 0
" let g:airline#extensions#tabline#fnamemod = ':t'
" let g:airline#extensions#tabline#enabled = 1
" call airline#parts#define_function('goinfo', 'go#complete#GetInfo')
" call airline#parts#define_condition('goinfo', '&ft =~ "go"')
" set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\ %{fugitive#statusline()}
" let g:airline#extensions#branch#enabled = 1
" let g:airline#extensions#tagbar#enabled = 1

" =============================================================================
" # Plug 'plasticboy/vim-markdown'
" =============================================================================
let g:vim_markdown_folding_disabled = 1

" =============================================================================
" # Plug 'ctrlpvim/ctrlp.vim'
" =============================================================================
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.lock,*/node_modules/*,*/data/*,*/dist/*     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe,*.lock,*\\node_modules\\*,*\\data\\*,*\\dist\\*,*\\Library\\*,*\\public\\*  " Windows

let g:ctrlp_working_path_mode = 'w'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
            \ 'dir':  '\v[\/]\.(git|hg|svn|node_modules)$',
            \ 'file': '\v\.(exe|so|dll)$',
            \ 'link': 'some_bad_symbolic_links',
            \ }

" =============================================================================
" # Plug 'APZelos/blamer.nvim'
" =============================================================================
" let g:blamer_enabled = 1
let g:blamer_delay = 250

" =============================================================================
" # FILETYPE SPECIFIC
" =============================================================================
" autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
" autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
autocmd BufNewFile,BufRead,BufEnter *.jsx set filetype=javascriptreact
autocmd BufNewFile,BufRead,BufEnter *.tsx set filetype=typescriptreact
autocmd FileType javascriptreact,typescriptreact EmmetInstal
autocmd BufNewFile,BufRead coc-settings.json,tsconfig.json set filetype=jsonc
" autocmd Filetype javascript,dart,typescript,javascript.jsx,typescript.tsx setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript,dart,typescript,javascript.jsx,typescript.tsx setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript.jsx,typescript.tsx set wrap linebreak
autocmd Filetype markdown setlocal textwidth=80 
autocmd Filetype markdown let b:coc_suggest_disable = 1

source $NVIM_CONFIG_DIR/plugins/coc.vim
