-- custom/plugins/init.lua has to return a table
-- THe plugin name is github user or organization name/reponame
return {
    ["wbthomason/packer.nvim"] = {
        override_options = {
            max_jobs = 5
        }
    },
    ["jose-elias-alvarez/null-ls.nvim"] = {
        after = "nvim-lspconfig",
        config = function()
            require "custom.plugins.null-ls"
        end
    },
    ["williamboman/mason.nvim"] = {
        override_options = {
            ensure_installed = {"lua-language-server", "css-lsp", "html-lsp", "json-lsp", "emmet-ls",
                                "typescript-language-server", "gopls"}
        }
    },
    -- ["williamboman/mason-lspconfig.nvim"] = {},
    ["neovim/nvim-lspconfig"] = {
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.plugins.lspconfig"
        end
    },
    ["NvChad/nvim-colorizer.lua"] = false,
    ["camspiers/animate.vim"] = {},
    ["camspiers/lens.vim"] = {},
    ["easymotion/vim-easymotion"] = {},
    ["tpope/vim-fugitive"] = {},
    ["Maan2003/lsp_lines.nvim"] = {},
    ["goolord/alpha-nvim"] = {
        disable = false
    },
    ["folke/which-key.nvim"] = {
        disable = false
    },
    ["nvim-telescope/telescope-fzf-native.nvim"] = {
        run = "make"
    },
    ["nvim-telescope/telescope-file-browser.nvim"] = {},
    ["nvim-telescope/telescope-dap.nvim"] = {},
    ["mfussenegger/nvim-dap"] = {},
    ["kevinhwang91/promise-async"] = {},
    ["kevinhwang91/nvim-ufo"] = {
        requires = 'kevinhwang91/promise-async'
    }
}
