local treesitter = require("nvim-treesitter")
treesitter.setup()
treesitter.install ({  'javascript', 'typescript', 'c', 'lua', 'vim', 'vimdoc', 'query', 'clojure' })
      

vim.api.nvim_create_autocmd('FileType', {
pattern = {   'javascript', 'typescript', 'c', 'lua', 'vim', 'vimdoc', 'query', 'clojure' },
callback = function()
    -- syntax highlighting, provided by Neovim
    vim.treesitter.start()
    

    -- Uncomment below to enable folds
    --vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
    --vim.wo.foldmethod = 'expr'

    -- indentation, provided by nvim-treesitter
    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
end,
})