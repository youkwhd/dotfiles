local set = vim.opt
local ft = require('Comment.ft')

ft.set('c', '/*%s*/')

-- cursor blink
set.guicursor = 'n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175'

set.number = true
set.relativenumber = true

set.tabstop = 4
set.shiftwidth = 4
set.softtabstop = 4
set.expandtab = true
set.smartindent = true
set.smarttab = true
set.autoindent = true

set.wrap = false

set.encoding = 'UTF-8'

-- enable line status
set.laststatus = 2

-- clipboard support
set.clipboard = set.clipboard + 'unnamedplus'

-- set.termguicolors = true
-- vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[hi NormalFloat ctermbg=Black ctermfg=6]])
vim.cmd([[hi Visual ctermfg=15]])
vim.cmd([[hi SignColumn ctermbg=16 guibg=#000]]) -- left column
vim.cmd([[hi VertSplit cterm=none ctermbg=16 guibg=Black ctermfg=66]])
vim.cmd([[hi Pmenu ctermfg=White ctermbg=Black guibg=Black]])
