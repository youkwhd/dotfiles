set number
set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4

call plug#begin()

Plug 'preservim/nerdtree' " NerdTree
Plug 'tpope/vim-commentary' " For Commenting gcc & gc
Plug 'vim-airline/vim-airline' " Status bar
Plug 'ap/vim-css-color' " CSS Color Preview
Plug 'neoclide/coc.nvim', {'branch': 'release'}  " Auto Completion
Plug 'ryanoasis/vim-devicons' " Developer Icons
Plug 'terryma/vim-multiple-cursors' " CTRL + N for multiple cursors

call plug#end()

set encoding=UTF-8

nnoremap <C-t> :NERDTreeFocus<CR>
nnoremap <C-g> :NERDTree<CR>
nnoremap <C-f> :NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
