require('packages')
require('config')
require('keybindings')

-- starts lualine
require('lualine').setup {
    options = {
	theme = 'powerline_dark'
    }
}

-- configure treesitter
require('nvim-treesitter.configs').setup {
    highlight = {
        enable = true,
        -- additional_vim_regex_highlighting = false,
    },
    -- nvim-ts-context-commentstring
    context_commentstring = {
        enable = true,
        enable_autocmd = false,
        -- TODO:
        -- nnoremap <leader>c <cmd>lua require('ts_context_commentstring.internal').update_commentstring()<cr>
        config = {
            css = '// %s',
            javascript = {
                __default = '// %s',
                jsx_element = '{/* %s */}',
                jsx_fragment = '{/* %s */}',
                jsx_attribute = '// %s',
                comment = '// %s'
            },
            typescript = { __default = '// %s', __multiline = '/* %s */' },
        }
    }
}

-- set up lsp installer
-- require("nvim-lsp-installer").on_server_ready(function(server)
--     local opts = {
--         root_dir = function() return vim.loop.cwd() end
--     }
--
--     if server.name == 'sumneko_lua' then
--         opts = {
--             settings = {
--                 Lua = {
--                     diagnostics = {
--                         globals = {
--                             'vim',
--                             'use',
--                         }
--                     }
--                 }
--             }
--         }
--     end
--
--     server:setup(opts)
-- end)

require('ts_context_commentstring.internal').update_commentstring({
    key = '__multiline',
})

-- configure completion
local cmp = require'cmp'
cmp.setup({
    snippet = {
      expand = function(args)
        require('luasnip').lsp_expand(args.body)
      end,
    },
    mapping = {
      ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
      ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
      ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
      ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
      ['<C-e>'] = cmp.mapping({
        i = cmp.mapping.abort(),
        c = cmp.mapping.close(),
      }),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    },
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'luasnip' }, -- For luasnip users.
    }, {
      { name = 'buffer' },
    })
})

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
sources = cmp.config.sources({
        { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
        { name = 'buffer' },
    })
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
    sources = {
      { name = 'buffer' }
    }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
})

-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
local servers = {
    'clangd', -- c, c++
    -- 'omnisharp', -- C#
    -- 'csharp_ls', -- C#
    'gopls', -- go
    'html', -- html
    'gdscript', -- gdscript
    'sumneko_lua', -- lua
    'tsserver', -- typescript, javascript
    'pyright', -- python
    'jsonls', -- json
}

for _, lsp in pairs(servers) do
    require('lspconfig')[lsp].setup {
        capabilities = capabilities,
        flags = {
            debounce_text_changes = 150,
        }
    }
end

require'lspconfig'.tsserver.setup {
    root_dir = function() return vim.loop.cwd() end
}

require'lspconfig'.clangd.setup{}
require'lspconfig'.pyright.setup{}
require'lspconfig'.gopls.setup{}
require'lspconfig'.gdscript.setup{}

local capability = vim.lsp.protocol.make_client_capabilities()
capability .textDocument.completion.completionItem.snippetSupport = true
require'lspconfig'.html.setup {
  capabilities = capability,
}

-- require'lspconfig'.csharp_ls.setup{}

-- local pid = vim.fn.getpid()
-- local omnisharp_bin = "/usr/bin/omnisharp"
-- require'lspconfig'.omnisharp.setup{
--     cmd = { omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) };
-- }

-- set lua
local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

require'lspconfig'.sumneko_lua.setup {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
        path = runtime_path,
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim', 'use'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

