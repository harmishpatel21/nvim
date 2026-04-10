vim.g.netrw_banner = 0
-- vim.g.netrw_liststyle = 3

local opt = vim.opt

-- line numbers
opt.number = true
opt.relativenumber = true
opt.cursorline = true

-- tabs & indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

-- line wrapping
opt.wrap = false

-- search
opt.incsearch = true
opt.hlsearch = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- scroll offset
opt.scrolloff = 20

-- backspace
opt.backspace = "indent,eol,start"

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

-- font
vim.g.have_nerd_font = true

opt.colorcolumn = "80"

-- utf8
opt.encoding = "utf-8"
vim.o.fileencoding = "utf-8"
