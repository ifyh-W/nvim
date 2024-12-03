vim.g.mapleader = ' '

local km = vim.keymap

km.set('i', 'jk', '<Esc>')

km.set('n', ';', ':')
km.set('n', '<M-p>','<CMD>bnext<CR>')
km.set('n', '<leader>x','<CMD>bdelete<CR>')
km.set('n', '<Tab>','gt')
km.set('n', '<S-Tab>','gT')
km.set('n', '<leader>nh', '<CMD>nohl<CR>')
km.set('n', '<leader>sv', '<C-w>v')
km.set('n', '<leader>sx', '<C-w>s')

km.set('v', 'ii', '<Esc>')
km.set('v', 'J', ":m '>+1<CR>gv=gv")
km.set('v', 'K', ":m '<-2<CR>gv=gv")

km.set('c', 'jk', '<Esc>')

km.set('t', 'jk', "<C-\\><C-n>")

