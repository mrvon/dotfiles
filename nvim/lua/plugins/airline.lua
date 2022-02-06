-- luacheck: ignore 113
local cmd = vim.cmd

cmd [[
let g:airline_theme                                         ="gruvbox"
let g:airline_detect_modified                               =1
let g:airline_detect_paste                                  =1
let g:airline_detect_crypt                                  =1
let g:airline_detect_spell                                  =1
let g:airline_powerline_fonts                               =1
let g:airline#extensions#tabline#enabled                    =0
let g:airline#extensions#tabline#show_buffers               =1
let g:airline#extensions#tabline#tab_nr_type                =1
let g:airline#extensions#tabline#show_tab_nr                =1
let g:airline#extensions#tabline#formatter                  ='unique_tail'
let g:airline#extensions#tabline#buffer_nr_show             =1
let g:airline#extensions#tabline#buffer_nr_format           ='%s: '
let g:airline#extensions#whitespace#checks                  =[]
let g:airline#extensions#ale#enabled                        =1
let g:airline#extensions#tagbar#enabled                     =0
let g:airline#extensions#coc#enabled                        =0
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
]]
