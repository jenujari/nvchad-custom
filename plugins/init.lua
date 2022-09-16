-- custom/plugins/init.lua has to return a table
-- THe plugin name is github user or organization name/reponame
return {
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
    ["wbthomason/packer.nvim"] = {
        override_options ={
            max_jobs  = 10,
        },
    },
    -- ["jose-elias-alvarez/null-ls.nvim"] = {
    --     after = "nvim-lspconfig",
    --     config = function()
    --         require "custom.plugins.null-ls"
    --     end
    -- },
    ["nvim-telescope/telescope-fzf-native.nvim"] = {
        run = "make",
    },
    ["nvim-telescope/telescope-file-browser.nvim"]={},
    ["nvim-telescope/telescope-dap.nvim"]={},
    ["williamboman/mason-lspconfig.nvim"] = {},
    ["mfussenegger/nvim-dap"] = {}
}
