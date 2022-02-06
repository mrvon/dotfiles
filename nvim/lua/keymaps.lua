local map = vim.api.nvim_set_keymap
local cmd = vim.cmd

local noremap = {noremap = true}

-- leader keys
map("i", "jk", "<esc>", noremap)
map("t", "jk", "<c-\\><c-n>", noremap)
map("i", "JK", "<esc>", noremap)
map("t", "JK", "<c-\\><c-n>", noremap)

-- visual paste without overwritting register
map("x", "p", [['pgv"'.v:register.'y`>']], {expr = true})
map("x", "P", [['Pgv"'.v:register.'y`>']], {expr = true})

-- when in terminal mode, escape will leave terminal mode and then it becomes
-- like any other vim buffer and can be switched or deleted or whatever
-- tnoremap <expr> <c-r> '<c-\><c-n>"'.nr2char(getchar()).''
map("t", "<esc>", ":<C-\\><C-n>", {noremap = true})

-- move between windows
map("n", "<c-k>", "<c-w>k", noremap)
map("n", "<c-j>", "<c-w>j", noremap)
map("n", "<c-h>", "<c-w>h", noremap)
map("n", "<c-l>", "<c-w>l", noremap)

-- edit the alternative file
map("n", "<leader><leader>", "<c-^>", noremap)

-- edit vimrc
-- map("n", "<leader>ev", ":vsplit $MYINIT", noremap)

-- reload vimrc
-- nnoremap <leader>sv                                         :source $MYINIT<cr>

cmd("cabbrev W w")
cmd("cabbrev Q q")
cmd("cabbrev WQ wq")
cmd("cabbrev Wq wq")
cmd("cabbrev QA qa")
cmd("cabbrev Qa qa")

map("n", "H", "0", noremap)
map("v", "H", "0", noremap)
map("n", "L", "$", noremap)
map("v", "L", "$", noremap)

map("n", "Q", "<nop>", noremap)

-- move by line
map("n", "j", "gj", noremap)
map("n", "k", "gk", noremap)
map("v", "j", "gj", noremap)
map("v", "k", "gk", noremap)

map("n", "<leader>h", ":nohlsearch<cr>", noremap)

map("i", "<localleader>fn", "<c-r>=expand('%:t')<cr>", noremap)
map("c", "<localleader>fn", "<c-r>=expand('%:t')<cr>", noremap)
map("i", "<localleader>fm", "<c-r>=expand('%:p')<cr>", noremap)
map("c", "<localleader>fm", "<c-r>=expand('%:p')<cr>", noremap)
