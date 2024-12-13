return {
    'neovim/nvim-lspconfig',
    dependencies = {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
    },
    config = function()
        -- 需要安装的lsp和需要的特殊配置
        local servers = {
            lua_ls = {},
            clangd = {},
        }

        -- 一些默认快捷键：
        -- <c-]> go to definition
        -- v_gq 格式化
        -- K hover()
        -- [d, ]d  vim.diagnostic.goto_prev() and vim.diagnostic.goto_next()
        -- <c-w>d vim.diagnostic.open_float()
        -- 如果需要绑定一些额外的快捷键，或者在lsp启动的时候做些额外工作
        local on_attach = function(_, bufnr)
            local nmap = function(keys, func, desc)
                if desc then
                    desc = 'LSP: ' .. desc
                end

                vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
            end

            nmap('gd', vim.lsp.buf.definition, '去定义')
            nmap('K', vim.lsp.buf.hover, '悬浮文档')
            nmap('<leader>lr', vim.lsp.buf.rename, '重命名')
            nmap('<leader>lf', function()
                vim.lsp.buf.format({ async = true })
            end, '格式化代码')
        end

        require("mason").setup()
        local capabilities = require('cmp_nvim_lsp').default_capabilities()

        require("mason-lspconfig").setup({
            ensure_installed = vim.tbl_keys(servers),
            handlers = {
                function(server_name)
                    require('lspconfig')[server_name].setup({
                        settings = servers[server_name],
                        on_attach = on_attach,
                        capabilities = capabilities,
                    })
                end
            },
        })
    end,
}
