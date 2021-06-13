""  this is a neovim settings file

""  NEOVIM SETTINGS

" set relative line numbers

call plug#begin("$XDG_CONFIG_HOME/nvim/plugged")
    Plug 'chrisbra/csv.vim'
    Plug 'moll/vim-bbye'
    Plug 'simeji/winresizer'
    Plug 'christoomey/vim-tmux-navigator'
call plug#end()

""""""""""""""""""""
" chrisbra/csv.vim "
""""""""""""""""""""
autocmd BufRead,BufWritePost *.csv :%ArrangeColumn!
autocmd BufWritePre *.csv :%UnArrangeColumn

"""""""""""""""""""""
" simeji/winresizer "
"""""""""""""""""""""
let g:winresizer_start_key = "<leader>w"

nnoremap <c-w>h <c-w>s



set rnu

" save undo-trees in files
set undofile
set undodir=$HOME/.config/nvim/undo

" number of undo saved
set undolevels=10000
set undoreload=10000

" use 4 spaces instead of tab
" copy indent from current line when starting a new line
""may defer the followings to julia formatter if needs be
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" allows cop-paste from os-clipboard to nvim
set clipboard+=unnamedplus
