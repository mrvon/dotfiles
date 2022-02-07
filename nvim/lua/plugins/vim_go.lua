-- luacheck: ignore 113
local cmd = vim.cmd

cmd [[
let g:go_bin_path                                           =$GOPATH . "/bin/"
let g:go_fmt_command                                        ="gofmt"
let g:go_def_mode                                           ="godef"
augroup go_shortcut
    autocmd!
    autocmd FileType go nmap <localleader>b  <Plug>(go-build)
    autocmd FileType go nmap <localleader>co <Plug>(go-coverage)
    autocmd FileType go nmap <localleader>cr <Plug>(go-callers)
    autocmd FileType go nmap <localleader>ce <Plug>(go-callees)
    autocmd FileType go nmap <localleader>ds <Plug>(go-def-split)
    autocmd FileType go nmap <localleader>dv <Plug>(go-def-vertical)
    autocmd FileType go nmap <localleader>dt <Plug>(go-def-tab)
    autocmd FileType go nmap <localleader>e  <Plug>(go-rename)
    autocmd FileType go nmap <localleader>i  <Plug>(go-imports)
    autocmd FileType go nmap <localleader>r  <Plug>(go-run)
    autocmd FileType go nmap <localleader>s  <Plug>(go-implements)
    autocmd FileType go nmap <localleader>t  <Plug>(go-test)
augroup END
let g:go_highlight_extra_types                              =1
let g:go_highlight_functions                                =1
let g:go_highlight_function_calls                           =1
let g:go_highlight_types                                    =1
let g:go_highlight_fields                                   =1
let g:go_highlight_operators                                =1
let g:go_highlight_build_constraints                        =1
let g:go_template_autocreate                                =0
let g:go_def_mapping_enabled                                =0
let g:go_gopls_enabled                                      =1
let g:go_code_completion_enabled                            =0
let g:go_list_autoclose                                     =1
let g:go_list_type                                          ="quickfix"
]]
