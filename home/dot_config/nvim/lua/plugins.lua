return {
    {
        'MeanderingProgrammer/render-markdown.nvim',
        event = "VeryLazy",
        opts = {},
        ft = { "markdown", "codecompanion" },
        dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' },
    },
    {
        'folke/tokyonight.nvim',
        config = function()
            local colorscheme = 'tokyonight'

            local is_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
            if not is_ok then
                vim.notify("colorscheme " .. colorscheme .. " not found")
                return
            end
        end
    },
    {
        'chentoast/marks.nvim',
        config = function()
            require('marks').setup({
                default_mappings = true,
                signs = true,
                mappings = {}
            })
        end
    },
    'folke/which-key.nvim',
    'Olical/conjure',
    'gpanders/nvim-parinfer',
    {
        'dense-analysis/ale',
        config = function()
            local g = vim.g
            g.ale_completion_enabled = 1
            g.ale_linters = {clojure = {'clj-kondo'}}
        end
    },
    'HiPhish/rainbow-delimiters.nvim',
    'nvim-lua/plenary.nvim',
    {
        'mbbill/undotree',
        config = function(plugin)
            vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
        end
    },
    {
        'tpope/vim-fugitive',
        config = function(plugin)
            vim.keymap.set("n", "<leader>gs", vim.cmd.Git);
        end
    },
    'tpope/vim-eunuch',
    'kylechui/nvim-surround',
    'sQVe/sort.nvim',
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {'nvim-tree/nvim-web-devicons', lazy = true},
        config = function(plugin) require('lualine').setup() end
    },
    {"stevearc/oil.nvim", config = function(plugin) require("oil").setup() end},
    'github/copilot.vim',
    'L3MON4D3/LuaSnip',
    {
        'nvim-mini/mini.nvim',
        version = '*',
        config = function(plugin) require('mini.icons').setup({}) end
    }
}
