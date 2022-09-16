-- example file i.e lua/custom/init.lua
-- load your options globals, autocmds here or anything .__.
-- you can even override default options here (core/options.lua)
vim.o.guifont = "MesloLGL Nerd Font:h12"
vim.o.rnu = true
vim.o.scrolloff = 8
vim.o.belloff = "all"
vim.o.autoread = true
vim.o.foldmethod = "indent"
vim.o.wrap = true
vim.o.background = "dark"
vim.o.lz = true
vim.o.copyindent = true
vim.o.ut = 1000
vim.o.history = 500
vim.o.foldlevelstart = 10

vim.cmd([[
set path+=**
set encoding=utf-8
set nofoldenable
set cursorline
set t_Co=256
set showmatch
set foldcolumn=1
set mat=2
set ruler
set hidden
set noswapfile
set nobackup
set nowritebackup
set autoread
set wildignore+=**/vendor/**
set wildignore+=**/node_modules/**
set wildignore+=**/.git/**
set wildignore+=**/tags/**

syntax on
filetype indent on
filetype plugin on

highlight! link TermCursor Cursor
highlight! TermCursorNC guibg=red guifg=white ctermbg=1 ctermfg=15

imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
]])

vim.cmd([[
command! MakeTags !ctags -R --exclude=.git --exclude=node_modules --exclude=vendor --exclude=build --exclude=public .
command! -nargs=* Wrap set wrap linebreak nolist
]])

--Visual mode pressing * or # searches for the current selection
--Super useful! From an idea by Michael Naumann
vim.cmd([[
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

function! CmdLine(str)
    call feedkeys(":" . a:str)
endfunction 

function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", "\\/.*'$^~[]")
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'gv'
        call CmdLine("Ack '" . l:pattern . "' " )
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction
]])

require('telescope').setup {
    extensions = {
        fzf = {
            fuzzy = true, -- false will only do exact matching
            override_generic_sorter = true, -- override the generic sorter
            override_file_sorter = true, -- override the file sorter
            case_mode = "smart_case" -- or "ignore_case" or "respect_case" the default case_mode is "smart_case"
        }
    }
}
require('telescope').load_extension('fzf')
require('telescope').load_extension('dap')

