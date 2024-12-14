vim.g.mapleader = ' '

local km = vim.keymap

-- Modes
--   normal_mode = 'n'
--   insert_mode = 'i'
--   visual_mode = 'v'
--   visuual_block_mode = 'x'
--   terminal_mode = 't'
--   command_mode = 'c'
--
-- vim.keymap.set({mode}, {lhs}, {rhs}, {opts})
-- mode: 模式如上面所述
-- lhs: 触发序列
-- rhs: 被触发的*命令*或者*函数*
-- opts: {
--    不全，只有常用的：
--    nowait boolean 直接触发指令，不再等待之后的输入
--    silent boolean 触发指令后不会在屏幕下面显示触发的指令
--    noremap boolean 不会递归map
--    desc string 给人类看的描述
--    callback function  lua function called in place of {rhs}.
-- }

-- 插入模式
km.set('i', 'jk', '<Esc>')

-- 普通模式
km.set('n', ';', ':')

km.set('n', '<S-l>','<CMD>bnext<CR>', { desc = '切换buffer' })
km.set('n', '<S-h>','<CMD>bNext<CR>', { desc = '切换buffer' })
km.set('n', '<leader>x', '<CMD>bdelete<CR>', { desc = '关闭buffer' })

km.set('n', '<A-Left>','gT', { desc = '切换tab' })
km.set('n', '<A-Right>','gt', { desc = '切换tab' })

km.set('n', '<leader>nh', '<CMD>nohl<CR>')

km.set('n', '<leader>sv', '<C-w>v')
km.set('n', '<leader>sx', '<C-w>s')

km.set('n', '<C-h>', '<C-w>h')
km.set('n', '<C-j>', '<C-w>j')
km.set('n', '<C-k>', '<C-w>k')
km.set('n', '<C-l>', '<C-w>l')

km.set('n', '<C-Up>', '<CMD>resize -2<CR>')
km.set('n', '<C-Down>', '<CMD>resize +2<CR>')
km.set('n', '<C-Left>', '<CMD>vertical resize -2<CR>')
km.set('n', '<C-Right>', '<CMD>vertical resize +2<CR>')

-- 目录树
-- % 新建文件
-- R 重命名
-- d 尝试新建目录
-- D 尝试删除文件/目录
-- <del> 尝试删除
-- <c-l> 刷新目录树
-- - 回到上层目录
-- p 预览文件
-- P 在上次使用的窗口里预览文件
-- o 水平分割文件进入编辑
-- gh 循环显示隐藏(.)文件

-- 设置目录树默认格式
vim.g.netrw_liststyle = 3
-- 关闭banner
vim.g.netrw_banner = 0
-- 不再使用netrw，因为每次打开rw都会产生一个无名buffer，实在太烦了
-- km.set('n', '<leader>e', '<CMD>Lex 25<CR>')

-- 视觉模式
km.set('v', 'ii', '<Esc>')
-- 移动行
km.set('v', 'J', ":m '>+1<CR>gv=gv")
km.set('v', 'K', ":m '<-2<CR>gv=gv")
-- 缩进后保持
km.set('v', '<', '<gv')
km.set('v', '>', '>gv')

-- 插入模式
km.set('i', '<C-v>', '<C-o>"+p');

-- 命令模式
km.set('c', 'jk', '<Esc>')

-- 终端模式
km.set('t', 'ii', '<C-\\><C-n>')
km.set('t', '<A-Left>','<C-\\><C-n>gT', { desc = '切换tab' })
km.set('t', '<A-Right>','<C-\\><C-n>gt', { desc = '切换tab' })

