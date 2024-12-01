local o = vim.opt

-- 行号
o.relativenumber = true
o.number = true

-- 缩进
o.tabstop = 4
o.shiftwidth = 4
o.expandtab = true
o.autoindent = true

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
-- o.signcolumn = 'yes'

-- 新窗口位置
o.splitright = true
o.splitbelow = true

-- 指令序列的等待时间
o.timeoutlen = 300

