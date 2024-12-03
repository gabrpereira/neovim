return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {"lua_ls", "pylyzer", "ts_ls"},
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            lspconfig.lua_ls.setup{ capabilities = capabilities }
            lspconfig.pylyzer.setup{ capabilities = capabilities }
            lspconfig.ts_ls.setup{ capabilities = capabilities }

            vim.keymap.set("n", "-", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            vim.keymap.set({"n"}, "<Leader>ca", vim.lsp.buf.code_action, {})
        end
    },
}