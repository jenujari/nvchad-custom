local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter cmdline", opts = { nowait = true } },
    ["<A-j>"] = {"<CMD>m .+1<CR>==","move line down", opts = { nowait = true, noremap  = true, silent = true}},
    ["<A-k>"] = {"<CMD>m .-2<CR>==","move line up", opts = { nowait = true, noremap  = true, silent = true}},
  },
  i = {
    ["<A-j>"] = {"<ESC><CMD>m .+1<CR>==gi","move line down", opts = { nowait = true, noremap  = true, silent = true}},
    ["<A-k>"] = {"<ESC><CMD>m .-2<CR>==gi","move line up", opts = { nowait = true, noremap  = true, silent = true}},
  },
  v = {
    ["<A-j>"] = {":m '>+1<CR>gv=gv","move line down", opts = { nowait = true, noremap  = true, silent = true}},
    ["<A-k>"] = {":m '<-2<CR>gv=gv","move line up", opts = { nowait = true, noremap  = true, silent = true}},
  }
}
return M
