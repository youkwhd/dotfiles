require('packer').startup(function()
	use 'wbthomason/packer.nvim'

    -- html emmet
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
     --     'williamboman/nvim-lsp-installer',

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
             require('nvim-tree').setup()
         end
     }
end)
