-- luacheck: ignore 113
local cmd = vim.cmd

cmd [[
nnoremap <leader>v :Ack<cr>
nnoremap <localleader>v :Ack -w '<c-r>=expand("<cword>")<cr>'<cr>
if executable('rg')
    let g:ackprg = 'rg -S --vimgrep'
elseif executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif
let g:ackhighlight = 1
" solved mix relative and absolute path results problem
autocmd BufAdd * exe "cd" fnameescape(getcwd())
]]
