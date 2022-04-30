-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/youkwhd/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/youkwhd/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/youkwhd/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/youkwhd/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/youkwhd/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/home/youkwhd/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/youkwhd/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/youkwhd/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/youkwhd/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/youkwhd/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/youkwhd/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/youkwhd/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/home/youkwhd/.local/share/nvim/site/pack/packer/start/emmet-vim",
    url = "https://github.com/mattn/emmet-vim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/youkwhd/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/youkwhd/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/youkwhd/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/youkwhd/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/youkwhd/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n�\n\0\0\b\0004\0?6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0004\5\0\0=\5\6\4=\4\a\3=\3\b\0025\3\f\0005\4\t\0005\5\n\0=\5\v\4=\4\r\3=\3\14\0025\3\15\0=\3\16\0025\3\17\0004\4\0\0=\4\18\3=\3\19\0024\3\0\0=\3\20\0025\3\21\0004\4\0\0=\4\22\3=\3\23\0025\3\24\0005\4\25\0=\4\v\3=\3\26\0025\3\27\0004\4\0\0=\4\28\0034\4\0\0=\4\29\3=\3\30\0025\3\31\0=\3 \0025\3!\0005\4\"\0=\4#\0035\4$\0005\5%\0005\6'\0005\a&\0=\a(\0065\a)\0=\a*\6=\6\29\5=\5+\4=\4,\3=\3-\0025\3.\0=\3/\0025\0030\0005\0041\0=\0042\3=\0033\2B\0\2\1K\0\1\0\blog\ntypes\1\0\5\15copy_paste\1\fprofile\1\bgit\1\vconfig\1\ball\1\1\0\2\venable\1\rtruncate\1\ntrash\1\0\2\20require_confirm\2\bcmd\ntrash\factions\14open_file\18window_picker\fbuftype\1\4\0\0\vnofile\rterminal\thelp\rfiletype\1\0\0\1\a\0\0\vnotify\vpacker\aqf\tdiff\rfugitive\18fugitiveblame\1\0\2\venable\2\nchars)ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890\1\0\2\18resize_window\1\17quit_on_open\1\15change_dir\1\0\2\venable\2\vglobal\1\1\0\1\25use_system_clipboard\2\bgit\1\0\3\venable\2\ftimeout\3�\3\vignore\2\ffilters\fexclude\vcustom\1\0\1\rdotfiles\1\16diagnostics\1\0\4\fwarning\b\tinfo\b\nerror\b\thint\b\1\0\2\17show_on_dirs\1\venable\1\16system_open\targs\1\0\0\23ignore_ft_on_setup\24update_focused_file\16ignore_list\1\0\2\venable\1\15update_cwd\1\23hijack_directories\1\0\2\venable\2\14auto_open\2\rrenderer\19indent_markers\1\0\0\nicons\1\0\3\vcorner\t└ \tnone\a  \tedge\t│ \1\0\1\venable\1\tview\rmappings\tlist\1\0\1\16custom_only\1\1\0\a\vnumber\1\15signcolumn\byes preserve_window_proportions\1\19relativenumber\1\tside\tleft\vheight\3\30\nwidth\3\30\1\0\f\15update_cwd\1\fsort_by\tname\16open_on_tab\1\23open_on_setup_file\1\18open_on_setup\1\27ignore_buffer_on_setup\1'hijack_unnamed_buffer_when_opening\1\17hijack_netrw\2\18hijack_cursor\1\21hide_root_folder\1\18disable_netrw\1\25auto_reload_on_write\2\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/youkwhd/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/youkwhd/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/home/youkwhd/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/youkwhd/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/youkwhd/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/youkwhd/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["vim-godot"] = {
    loaded = true,
    path = "/home/youkwhd/.local/share/nvim/site/pack/packer/start/vim-godot",
    url = "https://github.com/habamax/vim-godot"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n�\n\0\0\b\0004\0?6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0004\5\0\0=\5\6\4=\4\a\3=\3\b\0025\3\f\0005\4\t\0005\5\n\0=\5\v\4=\4\r\3=\3\14\0025\3\15\0=\3\16\0025\3\17\0004\4\0\0=\4\18\3=\3\19\0024\3\0\0=\3\20\0025\3\21\0004\4\0\0=\4\22\3=\3\23\0025\3\24\0005\4\25\0=\4\v\3=\3\26\0025\3\27\0004\4\0\0=\4\28\0034\4\0\0=\4\29\3=\3\30\0025\3\31\0=\3 \0025\3!\0005\4\"\0=\4#\0035\4$\0005\5%\0005\6'\0005\a&\0=\a(\0065\a)\0=\a*\6=\6\29\5=\5+\4=\4,\3=\3-\0025\3.\0=\3/\0025\0030\0005\0041\0=\0042\3=\0033\2B\0\2\1K\0\1\0\blog\ntypes\1\0\5\15copy_paste\1\fprofile\1\bgit\1\vconfig\1\ball\1\1\0\2\venable\1\rtruncate\1\ntrash\1\0\2\20require_confirm\2\bcmd\ntrash\factions\14open_file\18window_picker\fbuftype\1\4\0\0\vnofile\rterminal\thelp\rfiletype\1\0\0\1\a\0\0\vnotify\vpacker\aqf\tdiff\rfugitive\18fugitiveblame\1\0\2\venable\2\nchars)ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890\1\0\2\18resize_window\1\17quit_on_open\1\15change_dir\1\0\2\venable\2\vglobal\1\1\0\1\25use_system_clipboard\2\bgit\1\0\3\venable\2\ftimeout\3�\3\vignore\2\ffilters\fexclude\vcustom\1\0\1\rdotfiles\1\16diagnostics\1\0\4\fwarning\b\tinfo\b\nerror\b\thint\b\1\0\2\17show_on_dirs\1\venable\1\16system_open\targs\1\0\0\23ignore_ft_on_setup\24update_focused_file\16ignore_list\1\0\2\venable\1\15update_cwd\1\23hijack_directories\1\0\2\venable\2\14auto_open\2\rrenderer\19indent_markers\1\0\0\nicons\1\0\3\vcorner\t└ \tnone\a  \tedge\t│ \1\0\1\venable\1\tview\rmappings\tlist\1\0\1\16custom_only\1\1\0\a\vnumber\1\15signcolumn\byes preserve_window_proportions\1\19relativenumber\1\tside\tleft\vheight\3\30\nwidth\3\30\1\0\f\15update_cwd\1\fsort_by\tname\16open_on_tab\1\23open_on_setup_file\1\18open_on_setup\1\27ignore_buffer_on_setup\1'hijack_unnamed_buffer_when_opening\1\17hijack_netrw\2\18hijack_cursor\1\21hide_root_folder\1\18disable_netrw\1\25auto_reload_on_write\2\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
