require('packer').startup(function()
     use 'wbthomason/packer.nvim'

     use 'mattn/emmet-vim'

     -- airline line status
     use {
         'nvim-lualine/lualine.nvim',
         requires = { 'kyazdani42/nvim-web-devicons', opt = true }
     }

     -- godot
     use 'habamax/vim-godot'

     -- comments
     use 'JoosepAlviste/nvim-ts-context-commentstring'
     use {
         'numToStr/Comment.nvim',
         config = function()
             require('Comment').setup()
         end
     }

     -- tree sitter
     use {
         'nvim-treesitter/nvim-treesitter',
         run = ':TSUpdate'
     }

     -- lsp
     use 'neovim/nvim-lspconfig'

     -- use {
     --     'neovim/nvim-lspconfig',
     --     'williamboman/nvim-lsp-installer',
     -- }

     -- snippet
     use 'saadparwaiz1/cmp_luasnip'
     use 'L3MON4D3/LuaSnip'
     use 'rafamadriz/friendly-snippets'

     -- completion
     use 'hrsh7th/cmp-nvim-lsp'
     use 'hrsh7th/cmp-buffer'
     use 'hrsh7th/cmp-path'
     use 'hrsh7th/cmp-cmdline'
     use 'hrsh7th/nvim-cmp'

     -- git diff
     use {
         'lewis6991/gitsigns.nvim',
         requires = { 'nvim-lua/plenary.nvim' },
         config = function ()
             require('gitsigns').setup()
         end
     }

     -- nvim tree window
     use {
         'kyazdani42/nvim-tree.lua',
         requires = { 'kyazdani42/nvim-web-devicons' },
         config = function()
             require'nvim-tree'.setup {
                 auto_reload_on_write = true,
                 disable_netrw = false,
                 hide_root_folder = false,
                 hijack_cursor = false,
                 hijack_netrw = true,
                 hijack_unnamed_buffer_when_opening = false,
                 ignore_buffer_on_setup = false,
                 open_on_setup = false,
                 open_on_setup_file = false,
                 open_on_tab = false,
                 sort_by = "name",
                 update_cwd = false,
                 view = {
                     width = 30,
                     height = 30,
                     side = "left",
                     preserve_window_proportions = false,
                     number = false,
                     relativenumber = false,
                     signcolumn = "yes",
                     mappings = {
                       custom_only = false,
                       list = {
                         -- user mappings go here
                       },
                     },
                   },
                   renderer = {
                     indent_markers = {
                       enable = false,
                       icons = {
                         corner = "└ ",
                         edge = "│ ",
                         none = "  ",
                       },
                     },
                   },
                   hijack_directories = {
                     enable = true,
                     auto_open = true,
                   },
                   update_focused_file = {
                     enable = false,
                     update_cwd = false,
                     ignore_list = {},
                   },
                   ignore_ft_on_setup = {},
                   system_open = {
                     cmd = nil,
                     args = {},
                   },
                   diagnostics = {
                     enable = false,
                     show_on_dirs = false,
                     icons = {
                       hint = "",
                       info = "",
                       warning = "",
                       error = "",
                     },
                   },
                   filters = {
                     dotfiles = false,
                     custom = {},
                     exclude = {},
                   },
                   git = {
                     enable = true,
                     ignore = true,
                     timeout = 400,
                   },
                   actions = {
                     use_system_clipboard = true,
                     change_dir = {
                       enable = true,
                       global = false,
                     },
                     open_file = {
                       quit_on_open = false,
                       resize_window = false,
                       window_picker = {
                         enable = true,
                         chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
                         exclude = {
                           filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
                           buftype = { "nofile", "terminal", "help" },
                         },
                       },
                     },
                   },
                   trash = {
                     cmd = "trash",
                     require_confirm = true,
                   },
                   log = {
                     enable = false,
                     truncate = false,
                     types = {
                       all = false,
                       config = false,
                       copy_paste = false,
                       git = false,
                       profile = false,
                     },
                   },
             }
         end
     }
end)
