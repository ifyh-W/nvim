# neovim配置

自己使用的neovim配置

## 当下使用环境
- neovim 0.11
- [maple font NF CN](https://github.com/ifyh-W/ifyh-Maple-Font)

## 使用方法
1. mkdir ~/.config
2. cd ~/.config
3. `git clone https://github.com/ifyh-W/nvim.git`
4. 进入nvim后等待插件安装，安装完重启neovim应该就能用了

## 插件管理

使用lazy.nvim进行插件管理

用到的插件可以在plugins文件夹中看到。尽量做到了一个插件一个文件，cmp和lsp两个功能用到的插件耦合比较强，所以放到了同一个文件中。

## 工作流

- 打开nvim/neovide，\<leader\>e（leader设置的是空格）找文件。
- :tab te 打开一个新tab里面开个终端
  - 进行了autocmd配置，使得在切换tab进入终端时（使用alt加左右箭头），可以直接在终端进行输入
  - 并且在终端模式下可以直接使用alt加左右箭头切换回编写代码的tab
- 两个tab，一个写代码一个终端执行命令

### keymap

- n、c模式下jk退出，v、t模式下ii退出
- ; 进入命令模式
- \<S-h\>\<S-l\> 切换buffer
- \<leader\>x 关闭当前buffer
- \<A-Left\>\<A-Right\> 切换tab，终端模式下也能用
- \<leader\>nh 取消搜索高光
- \<leader\>sv \<leader\>sx 竖直/水平新建窗口
- \<C-h\>\<C-j\>\<C-k\>\<C-l\> 切换窗口
- \<C-Left\>\<C-Up\>\<C-Down\>\<C-Right\> 更改窗口大小
- \<leader\>e 打开目录树（使用neovim自带的目录树netrw，缺点是关了再打开不会记住上次的状态。目前凑合用，不够用就换nvim-tree)
- \<S-j\>\<S-k\> 视觉模式下移动行

### plugin keymap

- \<leader\>lf 格式化文件 gd 去定义 K 悬浮文档 \<leader\>lr 重命名
- \<tab\> 自动补全
- \<C-b\>\<C-f\> 翻阅补全doc \<C-e\> 放弃补全
- \<leader\>s flash快速跳转 \<leader\>S flash按照treesitter选择块
- ys.. cs.. ds.. surround控制()""''[]

