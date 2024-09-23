vim.cmd('let g:netrw_lifestyle = 3')

local opt = vim.opt

-- line numbers
opt.relativenumber = true
opt.number = true
opt.cursorline = true

-- tabs & indentation
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

opt.smartindent = true 

-- line wrapping
opt.wrap = false

opt.hlsearch = false 
opt.incsearch = true 

opt.termguicolors = true 


opt.scrolloff = 20 
opt.signcolumn = "yes" 

-- serach settings
opt.ignorecase = true
opt.smartcase = true

-- clipboard
opt.clipboard:append('unnamedplus')

-- split windows
opt.splitright = true
opt.splitbelow = true


vim.g.have_nerd_font = false
opt.colorcolumn = "80"


