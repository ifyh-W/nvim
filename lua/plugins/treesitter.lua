local opts = {
    hightlight = { enable = true },
    indent = { enable = true },
    ensure_installed = {
        'c',
        'lua',
        'vim',
        'vimdoc',
        'markdown',
    },
}

return {
    {
        'nvim-treesitter/nvim-treesitter',
        config = function()
            require('nvim-treesitter.configs').setup(opts)
        end,
        build = ':TSUpdate',
    },
}
