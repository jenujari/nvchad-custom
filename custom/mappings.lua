---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>lk"] = { ":m .+1<CR>==", "move selected lines down", opts = { remap = false } },
    ["<leader>lo"] = { ":m .-2<CR>==", "move selected lines up", opts = { remap = false } },
  },
  i = {
    ["<C-l>k"] = { "<Esc>:m .+1<CR>==gi", "move selected lines down", opts = { remap = false } },
    ["<C-l>o"] = { "<Esc>:m .-2<CR>==gi", "move selected lines up", opts = { remap = false } },
  },
  v = {
    ["<leader>lk"] = { ":m '>+1<CR>gv=gv", "move selected lines down", opts = { remap = false } },
    ["<leader>lo"] = { ":m '<-2<CR>gv=gv", "move selected lines up", opts = { remap = false } },
  },
}

-- more keybinds!
M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dus"] = {
      function()
        local widgets = require "dap.ui.widgets"
        local sidebar = widgets.sidebar(widgets.scopes)
        sidebar.open()
      end,
      "Open debugging sidebar",
    },
    ["<leader>dui"] = {
      function()
        require("dapui").toggle()
      end,
      "Toggle debug ui",
    },
  },
}

M.dap_go = {
  plugin = true,
  n = {
    ["<leader>dgt"] = {
      function()
        require("dap-go").debug_test()
      end,
      "Debug go test",
    },
    ["<leader>dgl"] = {
      function()
        require("dap-go").debug_last()
      end,
      "Debug last go test",
    },
  },
}

M.gopher = {
  plugin = true,
  n = {
    ["<leader>gsj"] = {
      "<cmd> GoTagAdd json <CR>",
      "Add json struct tags",
    },
    ["<leader>gsy"] = {
      "<cmd> GoTagAdd yaml <CR>",
      "Add yaml struct tags",
    },
  },
}
return M
