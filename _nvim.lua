local vim = vim -- luacheck: ignore 113

-- leader key
vim.g.mapleader = " "
vim.g.maplocalleader = ","

local Plug = vim.fn["plug#"]
vim.call("plug#begin")
Plug("andymass/vim-matchup")
Plug("dense-analysis/ale")
Plug("mrvon/gruvbox.nvim")
Plug("junegunn/fzf", {
    ["do"] = function()
        vim.fn["fzf#install"]()
    end,
})
Plug("junegunn/fzf.vim")
Plug("junegunn/vim-easy-align")
Plug("majutsushi/tagbar")
Plug("mhinz/vim-signify", {["branch"] = "master"})
Plug("mhinz/vim-startify")
Plug("mileszs/ack.vim")
Plug("mrvon/gen_tags.vim")
Plug("neoclide/coc.nvim", {
    ["branch"] = "release",
    ["do"] = function()
        vim.cmd ":CocUpdate"
    end,
})
Plug("ntpeters/vim-better-whitespace")
Plug("nvim-lualine/lualine.nvim")
Plug("nvim-treesitter/nvim-treesitter", {
    ["do"] = function()
        vim.cmd ":TSUpdate"
    end,
})
Plug("nvim-treesitter/nvim-treesitter-textobjects")
Plug("preservim/nerdtree", {["on"] = "NERDTreeToggle"})
Plug("szw/vim-maximizer")
Plug("tbastos/vim-lua")
Plug("tpope/vim-commentary")
Plug("tpope/vim-fugitive")
Plug("tpope/vim-repeat")
Plug("tpope/vim-surround")
Plug("tpope/vim-unimpaired")
Plug("windwp/nvim-autopairs")
-- Plug("fatih/vim-go", {
--     ["do"] = function()
--         vim.cmd ":GoUpdateBinaries"
--     end,
-- })
vim.call("plug#end")

local vim_init_path = "~/.config/nvim/init.lua"
-- edit my vimrc
vim.keymap.set("n", "<leader>ev", string.format(":vsplit %s<cr>", vim_init_path))
-- reload my vimrc
vim.keymap.set("n", "<leader>sv", string.format(":source %s<cr>", vim_init_path))

-- PATH
vim.cmd [[

"-------------------------------Plugin Package Manager-------------------------
if &compatible
    set nocompatible
endif

" built-in plugins
packadd cfilter

filetype plugin indent on
syntax enable
]]

-- always use utf-8
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.fileencodings = "ucs-bom,utf-8,cp936,gb18030,gb2312,big5,default,latin1"
vim.opt.langmenu = "en_US.utf-8"
vim.opt.fileformats = "unix,dos,mac"
vim.cmd "language messages en_US.utf-8"

-- vim in tmux, clearing uses the current background color
vim.cmd [[ set t_ut= ]]

-- tad/indent
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 0
vim.opt.shiftround = true
vim.opt.expandtab = true
vim.opt.backspace = "indent,eol,start"
vim.opt.autoindent = true
vim.opt.smartindent = true

-- max history
vim.opt.history = 10000

-- ruler and statusline
vim.opt.ruler = false
vim.opt.laststatus = 2
vim.opt.scrolloff = 5
vim.opt.cmdheight = 1

-- magic
vim.opt.magic = true

-- share clipboard
vim.opt.clipboard:append("unnamed")
vim.opt.clipboard:append("unnamedplus")

-- line space
vim.opt.linespace = 0

-- highlight line under the cursor
vim.opt.cursorline = true
vim.opt.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"

-- enable lazyredraw
vim.opt.lazyredraw = true

-- display line number
vim.opt.number = true

-- show matching brackets
vim.opt.showmatch = true

-- hightlights search results
vim.opt.hlsearch = true
-- shows search matches during typing
vim.opt.incsearch = true

-- wrap long line
vim.opt.wrap = false

-- wrap scan
vim.opt.wrapscan = true

-- ignore case & smart case
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- color column
vim.opt.colorcolumn = "+1"

-- use ctrl-d to show wild menu
vim.opt.wildmenu = true

-- search path for gf command
vim.opt.path = ".,..,,"

-- disable undo file
vim.opt.undofile = false

-- allow background unsaved buffer
vim.opt.hidden = true

-- auto read when other program have modified the same file
vim.opt.autoread = true
vim.cmd "autocmd FocusGained * :checktime"

-- number format
vim.opt.nrformats = "hex"

-- I don't like vim style fold
vim.opt.foldenable = false

-- diff mode
vim.opt.diffopt:remove("internal")
vim.opt.diffopt:append("algorithm:histogram")
vim.opt.diffopt:append("linematch:50")
-- vim.opt.diffopt:append("indent-heuristic")

-- disable swap file
vim.opt.swapfile = false

-- disable preview window
vim.opt.completeopt:remove("preview")

-- shows the effects of a command
-- vim.opt.inccommand = "nosplit"

-- disable backup file
vim.opt.backup = false
vim.opt.writebackup = false

-- having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
-- delays and poor user experience.
vim.opt.updatetime = 300

-- window mininum height
vim.opt.winminheight = 0

-- timeout len
vim.opt.timeoutlen = 500

-- disable mouse
vim.opt.mouse = ""

-- sign column
vim.opt.signcolumn = "number"

-- disable editorconfig
vim.g.editorconfig = false

-- highlight yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
    pattern = "*",
    command = "silent! lua vim.highlight.on_yank()",
})

-- visual paste without overwritting register
vim.keymap.set("x", "p", [['pgv"'.v:register.'y`>']], {expr = true, noremap = true})
vim.keymap.set("x", "P", [['Pgv"'.v:register.'y`>']], {expr = true, noremap = true})

vim.cmd [[
"-------------------------------Commentary-------------------------------------
autocmd FileType asm setlocal commentstring=;\ %s
"-------------------------------NERDTree---------------------------------------
nnoremap <localleader>n                                     :NERDTreeToggle<cr>
let NERDTreeAutoCenter                                      =1
let NERDChristmasTree                                       =1
let NERDTreeWinSize                                         =25
"-------------------------------ALE--------------------------------------------
let g:ale_disable_lsp                                       =1
let g:ale_completion_enabled                                =0
let g:ale_lint_on_text_changed                              ='never'
let g:ale_lint_on_save                                      =1
nmap <silent> [s                                            <plug>(ale_previous_wrap)
nmap <silent> ]s                                            <plug>(ale_next_wrap)
let g:ale_linters                                           ={
    \ 'c': ['clang-tidy'],
    \ 'cpp': ['clang-tidy'],
    \ 'asm': [],
    \ 'go': ['go vet', 'gofmt', 'staticcheck'],
    \ 'lua': ['luacheck'],
    \ 'javascript': ['eslint'],
    \ }
let g:ale_fixers                                            ={
    \ 'c': ['clang-format'],
    \ 'cpp': ['clang-format'],
    \ 'go': ['goimports', 'gofmt'],
    \ 'python': ['yapf'],
    \ 'rust': ['rustfmt'],
    \ 'lua': ['stylua'],
    \ 'javascript': ['prettier'],
    \ }
let g:ale_go_staticcheck_lint_package                       =1
let g:ale_go_govet_options                                  ='-composites=false'
let g:ale_lua_stylua_options                                ='--search-parent-directories'
let g:ale_set_highlights                                    =0
let g:ale_linters_ignore                                    ={
    \ 'c': ['cc']
    \ }
let g:ale_use_neovim_diagnostics_api                        =1

nnoremap <localleader>f                                     :ALEFix<cr>
"-----------------------------------------TagBar-------------------------------
nnoremap <localleader>T                                     :TagbarToggle<cr>
"-----------------------------------------Matchup------------------------------
let g:matchup_matchparen_status_offscreen                   =0
"-----------------------------------------COC----------------------------------
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
    nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
    nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
    inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
    inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
    vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
    vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif
" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')
let g:coc_disable_transparent_cursor                        =1
"-----------------------------------------Whitespace---------------------------
let g:strip_whitespace_confirm                              =0
"-----------------------------------------Startify-----------------------------
let g:startify_change_to_dir                                =0
"-----------------------------------------ACK----------------------------------
nnoremap <silent><leader>v                                  :Ack<cr>
cabbrev ack Ack
cabbrev ACk Ack
cabbrev ACK Ack
nnoremap <silent><localleader>v                             :Ack -w '<c-r>=expand("<cword>")<cr>'<cr>
if executable('rg')
    let g:ackprg = 'rg -S --vimgrep'
elseif executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif
let g:ackhighlight                                          =1
" solved mix relative and absolute path results problem
autocmd BufAdd * exe "cd" fnameescape(getcwd())
"-----------------------------------------EASY ALIGN---------------------------
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)
"-----------------------------------------FZF----------------------------------
nnoremap <silent><leader>f                                  :call fzf#run(fzf#wrap({
    \ 'source': 'fd -L --exclude={.git,node_modules,build,tmp} --type f'
    \ }))<cr>
nnoremap <silent><leader>F                                  :call fzf#run(fzf#wrap({
    \ 'source': 'fd -L --exclude={.git,node_modules,build,tmp} --type f --no-ignore'
    \ }))<cr>
nnoremap <silent><leader>g                                  :Rg<cr>
nnoremap <silent><leader>G                                  :Ag<cr>
nnoremap <silent><leader>b                                  :Buffer<cr>
nnoremap <silent><leader>r                                  :History<cr>
nnoremap <silent><leader>t                                  :BTags<cr>
nnoremap <silent><leader>o                                  :Tags<cr>
nnoremap <localleader>o                                     :GenCtags<cr>
let g:fzf_colors                                            ={
    \ 'fg':      ['fg', 'Normal'],
    \ 'bg':      ['bg', 'Normal'],
    \ 'hl':      ['fg', 'Comment'],
    \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
    \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
    \ 'hl+':     ['fg', 'Statement'],
    \ 'info':    ['fg', 'PreProc'],
    \ 'border':  ['fg', 'Ignore'],
    \ 'prompt':  ['fg', 'Conditional'],
    \ 'pointer': ['fg', 'Exception'],
    \ 'marker':  ['fg', 'Keyword'],
    \ 'spinner': ['fg', 'Label'],
    \ 'header':  ['fg', 'Comment']
    \ }
let g:fzf_layout                                            ={
    \ 'window': { 'width': 0.9, 'height': 0.9 }
    \ }
let g:fzf_vim = {}
let g:fzf_vim.preview_window = ['hidden,right,50%', 'ctrl-/']
function! RipgrepFzf(query, fullscreen)
    let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case -- %s || true'
    let initial_command = printf(command_fmt, shellescape(a:query))
    let reload_command = printf(command_fmt, '{q}')
    let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
    call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction
command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)
autocmd! FileType fzf tnoremap <buffer> jk <c-c>
" autocmd! FileType fzf tnoremap <buffer> <esc> <c-c>
"-----------------------------------------GenTags------------------------------
let g:loaded_gentags#gtags                                  =1
let g:loaded_gentags#ctags                                  =0
let g:gen_tags#gtags_auto_gen                               =0
let g:gen_tags#ctags_auto_gen                               =0
let g:gen_tags#gtags_auto_update                            =0
let g:gen_tags#ctags_auto_update                            =0
let g:gen_tags#statusline                                   =0
" let g:gen_tags#ctags_opts                                 =[
"             \ '--exclude=.ccls-cache',
"             \ '--exclude=build',
"             \ ]
" $HOME/.config/ctags/my.ctags
" .ctags.d/*.ctags
]]

-- maximize
vim.cmd [[ nnoremap <silent><leader>z :MaximizerToggle<CR> ]]

-- Thanks to http://learnvimscriptthehardway.stevelosh.com/
-- Use jk instead of esc, this excellent idea came from steve.
vim.keymap.set("i", "jk", "<esc>", {noremap = true})
vim.keymap.set("t", "jk", "<c-\\><c-n>", {noremap = true})
vim.keymap.set("i", "JK", "<esc>", {noremap = true})
vim.keymap.set("t", "JK", "<c-\\><c-n>", {noremap = true})
-- when in terminal mode, escape will leave terminal mode and then it becomes
-- like any other vim buffer and can be switched or deleted or whatever
vim.cmd [[ tnoremap <expr> <c-r> '<c-\><c-n>"'.nr2char(getchar()).'' ]]

-- resize windows
vim.keymap.set("n", "<c-up>", "<c-w>3+", {noremap = true})
vim.keymap.set("n", "<c-down>", "<c-w>3-", {noremap = true})
vim.keymap.set("n", "<c-left>", "<c-w>3<", {noremap = true})
vim.keymap.set("n", "<c-right>", "<c-w>3>", {noremap = true})

-- moving between windows
-- origin switch window key-mappings is too hard for me
vim.keymap.set("n", "<c-k>", "<c-w>k", {noremap = true})
vim.keymap.set("n", "<c-j>", "<c-w>j", {noremap = true})
vim.keymap.set("n", "<c-h>", "<c-w>h", {noremap = true})
vim.keymap.set("n", "<c-l>", "<c-w>l", {noremap = true})

-- edit the alternate file.
-- mostly the alternate file is the previously edited file.
vim.keymap.set("n", "<leader><leader>", "<c-^>", {noremap = true})

-- abbrev
vim.cmd [[
cabbrev  W  w
cabbrev  Q  q
cabbrev  WQ wq
cabbrev  Wq wq
cabbrev  QA qa
cabbrev  Qa qa
]]

-- Y is a strong y, D is a strong d in Vim default setting
-- as you can see, a stronger h and a stronger l
vim.keymap.set("n", "H", "0", {noremap = true})
vim.keymap.set("v", "H", "0", {noremap = true})
vim.keymap.set("n", "L", "$", {noremap = true})
vim.keymap.set("v", "L", "$", {noremap = true})
-- no Ex mode
vim.keymap.set("n", "Q", "<nop>", {noremap = true})
-- vim.keymap.set("n", "J", "<nop>", {noremap = true})
-- vim.keymap.set("v", "J", "<nop>", {noremap = true})
vim.keymap.set("n", "K", "<nop>", {noremap = true})

vim.cmd [[
" Help myself
map <F1>                                                    <esc>
imap <F1>                                                   <esc>

" Vimscript file settings
augroup filetype_vim
    autocmd!
    autocmd                                                 FileType vim setlocal foldmethod=marker
    " autocmd                                                 FileType html setlocal tabstop=2 shiftwidth=2
    " autocmd                                                 FileType vue setlocal tabstop=2 shiftwidth=2
    " autocmd                                                 FileType javascript setlocal tabstop=2 shiftwidth=2
augroup END

" Closing last search highlight
nnoremap <leader>h                                          :nohlsearch<cr>

" Filetype alias
" augroup align_filetype_group
"     autocmd!
"     autocmd                                               BufRead,BufNewFile *.txt setlocal filetype=lua
" augroup END

" edit binary using xxd-format!
" vim -b enter binary mode
if &binary
augroup binary_edit_group
    autocmd!
    autocmd                                                 BufReadPre   * let   &bin=1
    autocmd                                                 BufReadPost  * if    &bin    | %!xxd
    autocmd                                                 BufReadPost  * set   ft=xxd  | endif
    autocmd                                                 BufWritePre  * if    &bin    | %!xxd -r
    autocmd                                                 BufWritePre  * endif
    autocmd                                                 BufWritePost * if    &bin    | %!xxd
    autocmd                                                 BufWritePost * set   nomod   | endif
augroup END
endif

" save file with nobomb
augroup save_with_nobomb
    autocmd!
    autocmd                                                 BufWritePre *.lua setlocal nobomb
augroup END

" augroup on_enter_vim
    " autocmd!
    " autocmd VimEnter * nested :TagbarOpen
" augroup END

augroup on_enter_buffer
    autocmd!
    autocmd BufEnter * EnableStripWhitespaceOnSave
    autocmd BufEnter * DisableWhitespace
augroup END
]]

vim.cmd [[
" augroup save_retab
"     autocmd!
"     autocmd                                               BufWritePre * :retab
" augroup END

" Insert current file name
" inoremap <localleader>fn                                  <c-r>=expand("%:t")<cr>
" inoremap <localleader>fm                                  <c-r>=expand("%:p")<cr>
cnoremap <localleader>fn                                    <c-r>=expand("%:t")<cr>
cnoremap <localleader>fm                                    <c-r>=expand("%:p")<cr>

" Easy Folding
nnoremap <localleader>z                                     zfa{<cr>

" Fast write
nnoremap <leader>w                                          :w<esc>
nnoremap <localleader>w                                     :Gwrite<esc>

" Fast quit all
nnoremap <localleader>q                                     :qa<esc>
]]

-- search in visual mode
vim.cmd [[
function! ExecuteCmd(cmd)
    exe "menu __magic_menu.__sub_magic_menu :" . a:cmd
    emenu __magic_menu.__sub_magic_menu
    unmenu __magic_menu
endfunction

function!                                                   __VisualSelection(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]#')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'backward'
        execute "normal ?" . l:pattern
    elseif a:direction == 'forward'
        execute "normal /" . l:pattern
    elseif a:direction == 'ack_smartcase'
        execute ExecuteCmd("Ack --smart-case " . "\"" . l:pattern . "\"" . "<cr>")
    elseif a:direction == 'ack_wholeword'
        execute ExecuteCmd("Ack --smart-case -w " . "\"" . l:pattern . "\"" . "<cr>")
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

vnoremap <silent> *                                         :call __VisualSelection('forward')<cr>:set hlsearch<cr>
vnoremap <silent> #                                         :call __VisualSelection('backward')<cr>:set hlsearch<cr>
vnoremap <leader>v                                          :call __VisualSelection('ack_smartcase')<cr>
vnoremap <localleader>v                                     :call __VisualSelection('ack_wholeword')<cr>
]]

-- move by line
vim.keymap.set("n", "j", "gj", {noremap = true})
vim.keymap.set("n", "k", "gk", {noremap = true})
vim.keymap.set("v", "j", "gj", {noremap = true})
vim.keymap.set("v", "k", "gk", {noremap = true})

-- for c, rust
vim.keymap.set("n", "<localleader>;", "A;<esc>", {noremap = true})

-- for rust
vim.cmd [[
autocmd FileType rust                                       highlight CocErrorHighlight guibg= ctermbg=
]]

-- disable builtins plugins
local disabled_built_ins = {
    "netrw",
    "netrwPlugin",
    "netrwSettings",
    "netrwFileHandlers",
    "gzip",
    "zip",
    "zipPlugin",
    "tar",
    "tarPlugin",
    "getscript",
    "getscriptPlugin",
    "vimball",
    "vimballPlugin",
    "2html_plugin",
    "logipat",
    "rrhelper",
    "spellfile_plugin",
    "matchit",
}
for _, plugin in pairs(disabled_built_ins) do
    vim.g["loaded_" .. plugin] = 1
end

-- get highlight group of cursor word
-- vim.cmd [[
-- function! SynStack()
--     if !exists("*synstack")
--         return
--     endif
--     echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
-- endfunc
-- ]]

vim.diagnostic.config({
    virtual_text = {
        spacing = 0,
        prefix = " ■",
        -- source = "if_from",
    },
})

require("lualine").setup {
    options = {
        icons_enabled = false,
        theme = "gruvbox",
        component_separators = {left = "", right = ""},
        section_separators = {left = "", right = ""},
        disabled_filetypes = {
            statusline = {},
            winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = true,
    },
    sections = {
        lualine_a = {"mode"},
        lualine_b = {"branch", "diff", "diagnostics"},
        lualine_c = {"filename"},
        lualine_x = {"encoding"},
        lualine_y = {"progress"},
        lualine_z = {"location"},
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {"filename"},
        lualine_x = {"location"},
        lualine_y = {},
        lualine_z = {},
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {},
}

require("nvim-treesitter.configs").setup {
    ensure_installed = {},
    sync_install = false,
    auto_install = true,
    ignore_install = {},
    highlight = {
        enable = true,
        disable = {},
        additional_vim_regex_highlighting = false,
    },
}

require("gruvbox").setup({
    terminal_colors = true, -- add neovim terminal colors
    undercurl = true,
    underline = true,
    bold = true,
    italic = {
        strings = true,
        emphasis = true,
        comments = true,
        operators = false,
        folds = true,
    },
    strikethrough = true,
    invert_selection = true,
    invert_signs = false,
    invert_tabline = false,
    invert_intend_guides = false,
    inverse = true,
    contrast = "",
    palette_overrides = {},
    overrides = {
        Sneak = {fg = "black", bg = "#ff9900"},
    },
    dim_inactive = false,
    transparent_mode = false,
})

require("nvim-autopairs").setup {}

require("nvim-treesitter.configs").setup {
    textobjects = {
        select = {
            enable = true,
            lookahead = true,
            keymaps = {
                ["af"] = "@function.outer",
                ["if"] = "@function.inner",
                ["as"] = {query = "@scope", query_group = "locals", desc = "Select language scope"},
            },
            selection_modes = {
                ["@parameter.outer"] = "v", -- charwise
                ["@function.outer"] = "V", -- linewise
            },
            include_surrounding_whitespace = false,
        },
        move = {
            enable = true,
            set_jumps = true, -- whether to set jumps in the jumplist
            goto_next_start = {
                ["]m"] = "@function.outer",
            },
            goto_next_end = {
                ["]M"] = "@function.outer",
            },
            goto_previous_start = {
                ["[m"] = "@function.outer",
            },
            goto_previous_end = {
                ["[M"] = "@function.outer",
            },
        },
    },
}

vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.cmd [[ colorscheme gruvbox ]]
