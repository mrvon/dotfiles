-- luacheck: ignore 113
local cmd = vim.cmd

cmd [[
nnoremap <localleader>n                                         :NERDTreeToggle<cr>
let NERDTreeAutoCenter                                          = 1
let NERDChristmasTree                                           = 1
let NERDTreeWinSize                                             = 25
]]
