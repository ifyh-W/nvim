return {
    'akinsho/bufferline.nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },
    config = function()
        require("bufferline").setup({
            options = {
                separator_style = "thin",
            },
            highlights = require("nord.plugins.bufferline").akinsho(),
        })
    end,
}
