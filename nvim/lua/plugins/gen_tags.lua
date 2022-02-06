-- luacheck: ignore 113
local cmd = vim.cmd

cmd [[
    let g:loaded_gentags#gtags                                  =1
    let g:loaded_gentags#ctags                                  =0
    let g:gen_tags#gtags_auto_gen                               =0
    let g:gen_tags#ctags_auto_gen                               =0
    let g:gen_tags#gtags_auto_update                            =0
    let g:gen_tags#ctags_auto_update                            =0
]]
