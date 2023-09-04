local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})

vim.cmd "set path+=**"
vim.cmd "set nocompatible"
vim.cmd [[
  set tabstop=2 shiftwidth=2 softtabstop=2 expandtab 
  set colorcolumn=120
  set sessionoptions+=tabpages,globals " ENABLE SAVING OF TAB TITLES FOR SESSIONS 
  set ignorecase smartcase
  set hlsearch
  set incsearch
  set cursorline
  set scrolloff=8
  set belloff=all
  set wildmenu
  set hidden
  set noswapfile
  set nobackup
  set nowritebackup
  set autoread
  set backspace=start,eol,indent
  set mouse=a
  set mousef
  set mh
  set wrap
  set whichwrap+=b,s,<,>,[,],h,l
  set foldmethod=indent
  set nofoldenable
  set path+=**
  set termguicolors
  
  " set cmdheight=2
  set t_Co=256
  set lz
  set autoindent          " copy indent from current line when starting a new line
  set copyindent          " copy the previous indentation on autoindenting
  set smartindent         " even better autoindent (e.g. add indent after '{')
  set ut=2000
  set history=500
  set magic 

  " Add a bit extra margin to the left
  set foldcolumn=1

  " Show matching brackets when text indicator is over them
  set showmatch 

  " How many tenths of a second to blink when matching brackets
  set mat=2

  "Always show current position
  set ruler

  " I don't want to pull up these folders/files when calling CtrlP
  set wildignore+=**/vendor/**
  set wildignore+=**/node_modules/**
  set wildignore+=**/.git/**
  set wildignore+=**/tags/**

  set linespace=1

  if has("gui_running")
    set guifont=CaskaydiaCove\ Nerd\ Font:h14:cANSI:qDRAFT
  endif 
]]
-- vim.opt.guifont = { "CaskaydiaCove Nerd Font", ":h14" }
