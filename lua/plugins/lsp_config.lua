return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup({
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗"
                    }
                }
            })
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "intelephense", "gopls" }
            })
        end
    },

    {
        "neovim/nvim-lspconfig",
        dependencies = {
          "hrsh7th/cmp-nvim-lsp",
        },
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.intelephense.setup({})

            -- import cmp-nvim-lsp plugin
		        local cmp_nvim_lsp = require("cmp_nvim_lsp")
            -- used to enable autocompletion (assign to every lsp server config)
		        local capabilities = cmp_nvim_lsp.default_capabilities()

            lspconfig.gopls.setup({
                cmd = {"gopls"},
                filetypes = { "go", "gomod", "gowork", "gotmpl" },
                settings = {
                    gopls = {
                      completeUnimported = true,
                    --   usePlaceholders = true,
                      gofumpt = true,
                      analyses = {
                        unusedparams = true,
                      },
                    },
                  },
                capabilities = capabilities,
                -- on_attach = on_attach,
            })

            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
        end
    },
}
