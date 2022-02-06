-- luacheck: ignore 113
local cmd = vim.cmd

cmd [[
let $MYPATH ='~/'
if has('win32') || has('win64')
    let $MYVIMRC = $MYPATH.'AppData\Local\nvim\init.lua'
else
    let $MYVIMRC = $MYPATH.'.config/nvim/init.lua'
endif
]]
