-- 进入终端buffer时自动开始输入
vim.api.nvim_create_autocmd({'TabEnter'}, {
    pattern = 'term://*',
    command = 'startinsert'
})
-- 终端模式中不需要显示行号
vim.api.nvim_create_autocmd({'TermOpen'}, {
    pattern = 'term://*',
    callback = function ()
        vim.wo.number = false
        vim.wo.relativenumber = false
    end
})

