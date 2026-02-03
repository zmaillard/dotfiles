-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)


local plugins = {
   {
	  'nvim-telescope/telescope.nvim', version = 'v0.2.1',
	  dependencies = { {'nvim-lua/plenary.nvim'} },
      config = function() 
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
        vim.keymap.set('n', '<leader>fm', builtin.marks, {})
        vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
        vim.keymap.set('n', '<C-p>', builtin.git_files, {})
        vim.keymap.set('n', '<leader>ps', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") });
        end)
      end, 
  },
  'folke/tokyonight.nvim',
  {
      'nvim-treesitter/nvim-treesitter', 
      build= ':TSUpdate',
  },
  'chentoast/marks.nvim',
  'folke/which-key.nvim',
  'Olical/conjure',
  'gpanders/nvim-parinfer',
  {
    'dense-analysis/ale',
    config = function()
        local g = vim.g
        g.ale_completion_enabled = 1
        g.ale_linters = {clojure = {'clj-kondo'}}
    end,
  },
  'HiPhish/rainbow-delimiters.nvim',
  'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons',
  'nvim-lua/plenary.nvim',
  {
      'mbbill/undotree',
      config = function(plugin) 
        vim.keymap.set("n", "<leader>u",  vim.cmd.UndotreeToggle)
      end, 
  },
  {'tpope/vim-fugitive',
    config = function(plugin) 
      vim.keymap.set("n", "<leader>gs", vim.cmd.Git);
    end, 
  },
  'tpope/vim-eunuch',
  'kylechui/nvim-surround',
  'sQVe/sort.nvim',
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons', lazy = true },
    config = function(plugin) 
        require('lualine').setup()
    end, 
  },
  {
    "stevearc/oil.nvim",
    config = function(plugin)
      require("oil").setup()
    end,
  },
  'github/copilot.vim',
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'neovim/nvim-lspconfig',
  'L3MON4D3/LuaSnip',
   {
    'nvim-mini/mini.nvim', 
    version = '*',
    config = function(plugin)
      require('mini.icons').setup({})
    end, }
}

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = ","

require("lazy").setup(plugins)

-- Setup lazy.nvim
-- require("lazy").setup({
--   spec = {
--     -- import your plugins
--     { import = "plugins" },
--   },
--   -- Configure any other settings here. See the documentation for more details.
--   -- colorscheme that will be used when installing plugins.
--   install = { colorscheme = { "habamax" } },
--   -- automatically check for plugin updates
--   checker = { enabled = true },
-- })  
