return {
    {
        'saghen/blink.cmp',
        -- optional: provides snippets for the snippet source
        dependencies = { 'rafamadriz/friendly-snippets' },

        -- use a release tag to download pre-built binaries
        version = '1.*',

        opts = {
            keymap = {
                preset = 'enter',
                ['<Tab>'] = {'select_next', 'fallback'},
                ['<S-Tab>'] = {'select_prev', 'fallback'},
            },
            completion = {
                list = {
                    selection = {
                        preselect = false,
                        auto_insert = true,
                    }
                },
                documentation = { auto_show = true },
                menu = {
                    draw = {
                        padding = { 0, 1 }, -- padding only on right side
                        gap = 2,
                        components = {
                            kind_icon = {
                                text = function(ctx) return ' ' .. ctx.kind_icon .. ctx.icon_gap .. ' ' end
                            }
                        }
                    }
                }
            },
            sources = {
                default = { 'lsp', 'path', 'snippets', 'buffer' },
            },
            fuzzy = { implementation = "prefer_rust_with_warning" }
        },
        opts_extend = { "sources.default" }
    },
}
