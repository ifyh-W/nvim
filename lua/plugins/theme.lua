return {
    'shaunsingh/nord.nvim',
    init = function()
        local g = vim.g

        g.nord_italic = false
        g.nord_bold = false
    end,
    config = function()

        require('nord').set()
        vim.cmd.colorscheme('nord')
    end,
}
