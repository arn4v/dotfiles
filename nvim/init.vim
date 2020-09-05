let g:is_win = has('win32') || has('win64')
let g:is_linux = has('unix') && !has('macunix')
let g:is_mac = has('macunix')

if has('gui')
    source $HOME/.dotfiles/nvim/ginit.vim
endif
source $HOME/.dotfiles/nvim/settings/settings.vim
source $HOME/.dotfiles/nvim/plugins/plugins.vim
source $HOME/.dotfiles/nvim/themes/themes.vim

