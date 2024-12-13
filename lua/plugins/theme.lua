local nord_opts = {
    borders = false,
    search = {
        theme = 'vscode',
    },
}

return {
    {
        "gbprod/nord.nvim",
        lazy = false,
        priority = 1000,
        config = function()
          require("nord").setup(nord_opts)
          vim.cmd.colorscheme("nord")
        end,
    }
}

