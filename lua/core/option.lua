local o = vim.opt

-- 编码
o.fileencoding = 'utf-8'
-- 行号
o.number = true
o.relativenumber = true
-- 缩进
o.tabstop = 4
o.shiftwidth = 4
o.expandtab = true
o.autoindent = true
o.smartindent = true
o.wrap = false
-- 光标行
o.cursorline = true
-- 启用鼠标
o.mouse:append('a')
-- 搜索
o.ignorecase = true
o.smartcase = true
-- 外观
o.termguicolors = true
o.signcolumn = 'yes'
-- 新窗口位置
o.splitright = true
o.splitbelow = true
-- 指令序列的等待时间
o.timeoutlen = 300
-- 补全配置
o.completeopt = { 'menuone' }
-- 强制退出可能产生swap file
o.swapfile = false
-- 刷新磁盘(跟补全插件的延迟可能有关)
o.updatetime = 100
-- 保存undo记录
o.undofile = true
o.undodir = vim.fn.expand('$HOME/.local/share/nvim/undo')
-- 可能对编辑md文档有帮助
o.conceallevel = 0
-- 输入搜索时就开始高亮
o.incsearch = true
-- 不再显示左下角的insert
o.showmode = false

