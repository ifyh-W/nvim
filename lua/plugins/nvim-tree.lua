return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function ()
        vim.keymap.set('n', '<leader>e', '<CMD>NvimTreeToggle<CR>')
        require('nvim-tree').setup(opts)
    end,
    opts = {
        disable_netrw = true
    },
}

