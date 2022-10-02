local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "go",
  },
}

M.mason = {
  ensure_installed = {"lua-language-server", "css-lsp", "html-lsp", "json-lsp", "emmet-ls",
    "typescript-language-server", "gopls"}
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },
  disable_netrw = false,
  hijack_netrw = false,
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
