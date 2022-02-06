local cmd = vim.cmd
local g = vim.g
local opt = vim.opt

g.mapleader = " "
g.maplocalleader = ","
opt.mouse = "a"

opt.clipboard:append("unnamed")
opt.clipboard:append("unnamedplus")
