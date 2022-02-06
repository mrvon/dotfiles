local g = vim.g
local opt = vim.opt
local cmd = vim.cmd

-- leader key
g.mapleader = " "
g.maplocalleader = ","

-- encoding
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"
opt.fileencodings = "ucs-bom,utf-8,cp936,gb18030,gb2312,big5,default,latin1"
opt.langmenu = "en_US.utf-8"
opt.fileformats = "unix,dos,mac"
-- cmd("language messages en_US.utf-8")

-- vim in tmux, clearing uses the current background color
cmd("set t_ut=")

-- colors
opt.termguicolors = true

-- tab
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

-- disable undo file
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

-- diff mode
opt.diffopt = "filler,vertical"

-- disable swap file
opt.swapfile = false

-- disable preview window
opt.completeopt:remove("preview")

-- disable backup file
opt.backup = false
opt.writebackup = false

-- having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
-- delays and poor user experience.
opt.updatetime = 300

-- window mininum height
opt.winminheight = 0

-- timeout len
opt.timeoutlen = 500

-- sign column
opt.signcolumn = "number"

opt.clipboard:append("unnamed")
opt.clipboard:append("unnamedplus")

-- disable builtins plugins
local disabled_built_ins = {
    "netrw",
    "netrwPlugin",
    "netrwSettings",
    "netrwFileHandlers",
    "gzip",
    "zip",
    "zipPlugin",
    "tar",
    "tarPlugin",
    "getscript",
    "getscriptPlugin",
    "vimball",
    "vimballPlugin",
    "2html_plugin",
    "logipat",
    "rrhelper",
    "spellfile_plugin",
    "matchit"
}
for _, plugin in pairs(disabled_built_ins) do
    g["loaded_" .. plugin] = 1
end
