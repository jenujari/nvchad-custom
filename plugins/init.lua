-- custom/plugins/init.lua has to return a table
-- THe plugin name is github user or organization name/reponame
return {
    ["tpope/vim-fugitive"] = {},
    ["Maan2003/lsp_lines.nvim"] = {},
    ["goolord/alpha-nvim"] = {
        disable = false
    },
    ["folke/which-key.nvim"] = {
        disable = false
    },
    -- ["jose-elias-alvarez/null-ls.nvim"] = {
    --     after = "nvim-lspconfig",
    --     config = function()
    --         require "custom.plugins.null-ls"
    --     end
    -- },
    ["nvim-treesitter/nvim-treesitter"] = {
        override_options = {
            ensure_installed = {"html", "css", "javascript", "lua", "tsx"}
        }
    },
    ["williamboman/mason.nvim"] = {
        override_options = {
            ensure_installed = {"lua-language-server", "stylua", "css-lsp", "html-lsp", "typescript-language-server",
                                "emmet-ls", "json-lsp", "eslint-lsp", "prettier", "stylelint-lsp", "gopls", "gotests",
                                "goimports", "golines", "gofumpt", "eslint_d", "prettierd", "go-debug-adapter"},
            automatic_installation = true
        }
    },
    ["williamboman/mason-lspconfig.nvim"] = {},
    ["neovim/nvim-lspconfig"] = {
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.plugins.lspconfig"
        end
    },
    ["mfussenegger/nvim-dap"] = {}
}
