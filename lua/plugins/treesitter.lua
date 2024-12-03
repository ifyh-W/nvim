local opts = {
    ensure_installed = {
        'c',
        'lua',
        'vim',
        'vimdoc',
    },
}

return {
    'nvim-treesitter/nvim-treesitter',
    config = function()
        require('nvim-treesitter.configs').setup(opts)
    end,
    build = ':TSUpdate',
}

--[[return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    opts = {
        ensure_installed = {
            'c',
            'lua',
            'vim',
            'vimdoc',
        },
    },
}
]]

