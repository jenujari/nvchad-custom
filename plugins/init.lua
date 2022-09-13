-- custom/plugins/init.lua has to return a table
-- THe plugin name is github user or organization name/reponame
return {
    ["goolord/alpha-nvim"] = {
        disable = false
    },
    ["neovim/nvim-lspconfig"] = {
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.plugins.lspconfig"
        end
    }
    --   ["jose-elias-alvarez/null-ls.nvim"] = {
    --       after = "nvim-lspconfig",
    --       config = function()
    --          require "custom.plugins.null-ls"
    --       end,
    --  }
}
