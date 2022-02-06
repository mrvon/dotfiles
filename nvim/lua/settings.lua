local g = vim.g
local opt = vim.opt
local cmd = vim.cmd

g.mapleader = " "
g.maplocalleader = ","

opt.mouse = "a"

-- Tab
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop =0
opt.shiftround = true
opt.expandtab = true
opt.backspace = "indent,eol,start"
opt.autoindent = true
opt.smartindent = true
opt.printoptions = "paper:a4"

opt.history = 10000

-- opt.cursorline = true
-- opt.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"

opt.ruler = false
opt.laststatus = 2
opt.scrolloff = 5

opt.magic = true

opt.linespace = 0

opt.lazyredraw = true

opt.number = true
opt.showmatch = true

opt.hlsearch = true
opt.incsearch = true

opt.wrap = false
opt.wrapscan = true

opt.ignorecase = true
opt.smartcase = true

opt.colorcolumn = "+1"

-- you can use ctrl-d to show wild list
opt.wildmenu = true

-- search path for gf command
opt.path = ".,..,,"

-- no use undofile
opt.undofile = false

-- allow to bg unsaved buffer
opt.hidden = true

-- auto read when other program have modified the same file
opt.autoread = true
cmd("autocmd FocusGained * :checktime")

-- number format
opt.nrformats = "hex"

-- I don't like vim style fold
opt.foldenable = false

opt.clipboard:append("unnamed")
opt.clipboard:append("unnamedplus")

