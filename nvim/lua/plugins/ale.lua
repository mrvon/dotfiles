-- luacheck: ignore 113
local cmd = vim.cmd

cmd [[
let g:ale_completion_enabled                                =0
let g:ale_lint_on_text_changed                              ='never'
nmap <silent> [s                                            <plug>(ale_previous_wrap)
nmap <silent> ]s                                            <plug>(ale_next_wrap)
let g:ale_linters                                           ={
    \ 'asm': [],
    \ 'go': ['go vet', 'gofmt', 'staticcheck'],
    \ }
let g:ale_fixers                                            ={
    \ 'python': ['yapf'],
    \ 'rust': ['rustfmt'],
    \ }
let g:ale_go_staticcheck_lint_package                       =1
let g:ale_go_govet_options                                  ="-composites=false"
let g:ale_set_highlights                                    =0
]]
