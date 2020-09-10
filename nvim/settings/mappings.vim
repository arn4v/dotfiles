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
" nnoremap <silent> zj o<Esc>k
" nnoremap <silent> zk O<Esc>j

" Clear selection on ,c
nnoremap <cr> :noh<CR><CR>:<backspace>

" nnoremap <leader>n :set number!<cr>
nnoremap <leader>n :set relativenumber!<cr>
" nnoremap <leader>r :e!<cr>

" Toggle Full Screen (NVIM QT)
if g:is_win
    noremap <silent><F11> :call rpcnotify(0, 'Gui', 'WindowFullScreen', !g:GuiWindowFullScreen)<CR>
endif
"
" open new split panes to right and below
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
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
