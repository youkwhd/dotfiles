call plug#begin()

	Plug 'preservim/nerdtree' " NerdTree
	Plug 'tpope/vim-commentary' " For Commenting gcc & gc
	Plug 'ap/vim-css-color' " CSS Color Preview
	Plug 'neoclide/coc.nvim', {'branch': 'release'}  " Auto Completion
	Plug 'ryanoasis/vim-devicons' " Developer Icons
	Plug 'terryma/vim-multiple-cursors' " CTRL + N for multiple cursors

call plug#end()

set number relativenumber

set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smarttab

set nowrap

set encoding=UTF-8

" hide the status line
set laststatus=1
set guicursor=i:block " set the insert mode cursor to use block instead

nnoremap <C-t> :NERDTreeFocus<CR>
nnoremap <C-g> :NERDTree<CR>
nnoremap <C-f> :NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" disable warnings
let b:coc_diagnostic_disable=1

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
inoremap <expr> <Return> pumvisible() ? coc#_select_confirm() : "<Return>"
