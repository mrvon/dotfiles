-- luacheck: ignore 113
local cmd = vim.cmd

cmd [[
    autocmd FileType asm setlocal commentstring=;\ %s
]]
