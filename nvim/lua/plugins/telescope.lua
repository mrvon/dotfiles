-- luacheck: ignore 113
local map = vim.api.nvim_set_keymap
local noremap = {noremap = true}

map("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>", noremap)
map("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>", noremap)
map("n", "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>", noremap)
map("n", "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>", noremap)
map("n", "<leader>ft", "<cmd>lua require('telescope.builtin').tags()<cr>", noremap)

require('telescope').load_extension('fzf')
