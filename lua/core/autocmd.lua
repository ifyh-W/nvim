-- 进入终端buffer时自动开始输入
vim.api.nvim_create_autocmd({'TabEnter'}, {
    pattern = 'term://*',
    command = 'startinsert'
})

