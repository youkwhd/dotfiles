-- reconfigure C lang oneline comment (default was "//")
local ft = require('Comment.ft')
ft.set('c', '/*%s*/')

local set = vim.opt

set.encoding = 'UTF-8'

-- cursor blink
set.guicursor = 'n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175'

set.wrap = false

set.number = true
set.relativenumber = true

set.tabstop = 4
set.shiftwidth = 4
set.softtabstop = 4
set.expandtab = true
set.smartindent = true
set.smarttab = true
set.autoindent = true

-- clipboard support
set.clipboard = set.clipboard + 'unnamedplus'

-- color corrections for my terminal, comment these out
vim.cmd([[hi NormalFloat ctermbg=Black ctermfg=6]])
vim.cmd([[hi Visual ctermfg=15]])
vim.cmd([[hi! link SignColumn Normal ]]) -- left column
vim.cmd([[hi VertSplit cterm=none ctermbg=16 guibg=Black ctermfg=66]])
vim.cmd([[hi Pmenu ctermfg=White ctermbg=Black guibg=Black]])
