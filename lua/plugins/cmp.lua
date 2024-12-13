return {
    'hrsh7th/nvim-cmp',
    dependencies = {
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-nvim-lsp',
    },
    config = function()
        local cmp = require('cmp')

        cmp.setup({
            sources = cmp.config.sources({
                { name = 'nvim_lsp' },
                { name = 'path' },
            }),
            mapping = cmp.mapping.preset.insert({
                ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                ['<C-f>'] = cmp.mapping.scroll_docs(4),
                ['<C-e>'] = cmp.mapping.abort(),
                ["<Tab>"] = cmp.mapping(function(fallback)
                    -- This little snippet will confirm with tab, and if no entry is selected, will confirm the first item
                    if cmp.visible() then
                        local entry = cmp.get_selected_entry()
                        if not entry then
                            cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
                        end
                        cmp.confirm()
                    else
                        fallback()
                    end
                end, { "i", "s", "c", }),
            })
        })
    end,
}
