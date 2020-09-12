let g:is_win = has('win32') || has('win64')
let g:is_linux = has('unix') && !has('macunix')
let g:is_mac = has('macunix')

" Settings
" au CursorHold,CursorHoldI * set clipboard+=unnamedplus
" set clipboard=unnamedplus
" let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
" let base16colorspace=256  
highlight ColorColumn ctermbg=0 guibg=lightgrey
let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
let g:mapleader=" "
let mapleader=" "
syntax on
filetype plugin indent on 
set autoread
set colorcolumn=80
set expandtab
set hidden
set hlsearch
set ignorecase
set incsearch
set mouse=a
set nobackup
set noerrorbells
set noswapfile
set nowrap
set nowritebackup
set number
set relativenumber
set smartcase
set smartindent
set splitbelow
set splitright
set shiftwidth=4
set tabstop=4 softtabstop=4
set termguicolors
set undodir=~/.config/nvim/undodir
set backspace=indent,eol,start
xnoremap Y "+y

" Mappings
nnoremap <M-=> :vertical resize +5<CR>
nnoremap <M--> :vertical resize -5<CR>
nnoremap <M-\> :resize +5<CR>
nnoremap <M-]> :resize -5<CR>
nnoremap <leader>rv :vertical resize 100<CR>
nnoremap <leader>rh :resize 100<CR>

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
vnoremap X "_d

" because some reason I heard from Primeagen
inoremap <C-c> <esc>
tnoremap <Esc> <C-\><C-n>

" Disable the arrow keys
noremap <Up> <Nop>
noremap <Right> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>

" Tab navigation like Firefox.
nnoremap <leader>t :tabprevious<CR>
nnoremap <C-t>     :tabnew<CR>

" Vim Splits
nnoremap <C-j> <C-W><C-J>
nnoremap <C-k> <C-W><C-K>
nnoremap <C-l> <C-W><C-L>
nnoremap <C-h> <C-W><C-H>
nnoremap <M-j> <C-W><C-J>
nnoremap <M-k> <C-W><C-K>
nnoremap <M-l> <C-W><C-L>
nnoremap <M-h> <C-W><C-H>

" Create new line without leaving normal mode
nnoremap <leader>j o<Esc>k
nnoremap <leader>k O<Esc>j

" Clear selection on ,c
nnoremap <leader>h :noh<CR>
nnoremap <leader>ee :e!<CR>
" nnoremap <cr> :noh<CR><CR>:<backspace>
nnoremap <leader>n :set relativenumber!<cr>

" Toggle Full Screen (NVIM QT)
if g:is_win
    noremap <silent><F11> :call rpcnotify(0, 'Gui', 'WindowFullScreen', !g:GuiWindowFullScreen)<CR>
endif

" open new split panes to right and below
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
" au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
    if g:is_win
        split term://powershell
    else
        split term://zsh
    endif
    resize 10
endfunction
nnoremap <M-`> :call OpenTerminal()<CR>

"Ctrl-S Save
nnoremap <C-s> :w<CR>
noremap <C-s> <C-o>:w<CR>

" vim plug stuff
call plug#begin('~/.config/nvim/plugged')
    Plug 'preservim/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFocus'] }
    Plug 'Yggdroot/indentLine'
    Plug 'alvan/vim-closetag'
    Plug 'honza/vim-snippets'
    Plug 'itchyny/vim-cursorword'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'luochen1990/rainbow'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-fugitive'
    " auto closes quotes and braces
    Plug 'jiangmiao/auto-pairs'
    " auto closes XML tags
    Plug 'alvan/vim-closetag', { 'for': ['html', 'php', 'javascript', 'javascript.jsx', 'typescript.tsx'] }

    " Language Plugins
    Plug 'HerringtonDarkholme/yats.vim', { 'for': 'typescript' }
    Plug 'MaxMEllon/vim-jsx-pretty', { 'for': ['javascript.jsx', 'typescript.tsx'] }
    Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
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
    " Plug 'vim-airline/vim-airline'
    " Plug 'vim-airline/vim-airline-themes'
call plug#end()

" let g:gruvbox_contrast_light='hard'
" let g:gruvbox_contrast_dark='hard'
" if exists('+termguicolors')
"     let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"     let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" endif
let g:gruvbox_material_background = 'hard'
colorscheme gruvbox-material

" -------------------
" ------- COC -------
" -------------------
  let g:coc_global_extensions = [
    \ 'coc-snippets',
    \ 'coc-actions',
    \ 'coc-lists',
    \ 'coc-pairs',
    \ 'coc-tsserver',
    \ 'coc-html',
    \ 'coc-css',
    \ 'coc-emoji',
    \ 'coc-cssmodules',
    \ 'coc-yaml',
    \ 'coc-python',
    \ 'coc-svg',
    \ 'coc-prettier',
    \ 'coc-vimlsp',
    \ 'coc-xml',
    \ 'coc-yank',
    \ 'coc-json',
    \ 'coc-marketplace',
    \ ]

" Use <c-space> to trigger completion.
inoremap <silent><expr> <C-space> coc#refresh()

" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" GoTo code navigation.
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>rr <Plug>(coc-rename)
nmap <leader>g[ <Plug>(coc-diagnostic-prev)
nmap <leader>g] <Plug>(coc-diagnostic-next)
nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev-error)
nmap <silent> <leader>gn <Plug>(coc-diagnostic-next-error)
nnoremap <leader>cr :CocRestart
nnoremap <silent><M-S-f> :call CocAction('format')<CR>
nnoremap <M-m> :CocDiagnostics<CR>

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
" xmap <leader>a  <Plug>(coc-codeaction-selected)
" nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
" nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
" nmap <leader>qf  <Plug>(coc-fix-current)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
" nmap <silent> <TAB> <Plug>(coc-range-select)
" xmap <silent> <TAB> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
" nmap <leader>f <Plug>CocAction('format')
command! -nargs=0 Format :call CocAction('format')

" Prettier
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
" TODO add these to which key
" nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" " Manage extensions.
" nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" " Show commands.
" nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" " Find symbol of current document.
" nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" " Search workspace symbols.
" nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" " Do default action for next item.
" nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" " Do default action for previous item.
" nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" " Resume latest coc list.
" nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" Explorer
" let g:coc_explorer_global_presets = {
" \   'floating': {
" \      'position': 'floating',
" \   },
" \   'floatingLeftside': {
" \      'position': 'floating',
" \      'floating-position': 'left-center',
" \      'floating-width': 30,
" \   },
" \   'floatingRightside': {
" \      'position': 'floating',
" \      'floating-position': 'right-center',
" \      'floating-width': 30,
" \   },
" \   'simplify': {
" \     'file.child.template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
" \   }
" \ }
"nmap <silent> <space>e :CocCommand explorer<CR>
" nnoremap <C-n> :CocCommand explorer<CR>
" nmap <silent><leader>e :CocCommand explorer --preset floatingRightside<CR>
" autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

" Snippets
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<C-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<C-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)
" -------------------------------
" ----------COC FINISH-----------
" -------------------------------
"
" -------------------
" ------ airline ------
" unicode symbols
" let g:airline_powerline_fonts = 1
" let g:airline_theme = 'tomorrow'
" let g:airline_exclude_filetypes = ['unite']
" let g:airline#extensions#hunks#non_zero_only = 1
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#show_buffers = 0
" let g:airline#extensions#tabline#fnamemod = ':t'
" let g:airline#extensions#tabline#enabled = 1
"call airline#parts#define_function('goinfo', 'go#complete#GetInfo')
"call airline#parts#define_condition('goinfo', '&ft =~ "go"')
" set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\ %{fugitive#statusline()}
" let g:airline#extensions#branch#enabled = 1
" let g:airline#extensions#tagbar#enabled = 1
" -------------------
" -------------------
"
" -------------------------------
" ------------NERDTREE-----------
" -------------------------------
let g:NERDTreeIgnore = ['^node_modules$']
let NERDTreeShowHidden=1
map <silent> <C-n> :NERDTreeToggle<CR>
" -------------------------------
" --------NERDTREE FINISH--------
" -------------------------------
"
" -------------------------------
" --------------FZF--------------
" -------------------------------
" Fuzzy File Finder
nnoremap <leader>f :GFiles<CR>
nnoremap <expr> <C-p> (len(system('git rev-parse')) ? ':Files' : ':GFiles --exclude-standard --others --cached')."\<cr>"
" inoremap <expr> <S-space> search('\%#[]>)}''"`]', 'n') ? '<Right>' : '<Tab>'    
" nnoremap <C-p> :Files<CR>
" -------------------------------
" ----------FZF FINISH-----------
" -------------------------------
"

" ---------------
" four spaces indentation for js files
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4
