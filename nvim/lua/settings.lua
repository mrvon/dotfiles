local g = vim.g
local opt = vim.opt
local cmd = vim.cmd

g.mapleader = " "
g.maplocalleader = ","

opt.mouse = "a"

opt.clipboard:append("unnamed")
opt.clipboard:append("unnamedplus")
