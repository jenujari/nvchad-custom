local present, null_ls = pcall(require, "null-ls")

if not present then
   return
end

local b = null_ls.builtins

local sources = {b.code_actions.refactoring, b.formatting.prettier, b.formatting.gofmt, b.formatting.goimports}

null_ls.setup {
   debug = false,
   sources = sources
}
