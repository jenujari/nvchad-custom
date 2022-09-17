-- custom.plugins.lspconfig
-- https://github.com/neovim/nvim-lspconfig
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

-- tailwindcss
local lspconfig = require "lspconfig"
local servers = {"html", "jsonls", "cssls", "tsserver", "emmet_ls", "eslint", "gopls"}

for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        on_attach = on_attach,
        capabilities = capabilities
    }
end
