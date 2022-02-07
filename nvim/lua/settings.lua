-- luacheck: ignore 113
local g = vim.g
local opt = vim.opt
local cmd = vim.cmd

-- leader key
g.mapleader = " "
g.maplocalleader = ","

-- encoding
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"
opt.fileencodings = "ucs-bom,utf-8,cp936,gb18030,gb2312,big5,default,latin1"
opt.langmenu = "en_US.utf-8"
opt.fileformats = "unix,dos,mac"
cmd "language messages en_US.utf-8"

-- colors
cmd "colorscheme gruvbox"
opt.termguicolors = true
opt.background = "dark"

-- when vim in tmux, clearing uses the current background color
cmd "set t_ut="

-- tab/indent
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop =0
opt.shiftround = true
opt.expandtab = true
opt.backspace = "indent,eol,start"
opt.autoindent = true
opt.smartindent = true
opt.printoptions = "paper:a4"

-- max history
opt.history = 10000

-- ruler and statusline
opt.ruler = false
opt.laststatus = 2
opt.scrolloff = 5

-- enable magic
opt.magic = true

-- enable share clipboard
opt.clipboard:append("unnamed")
opt.clipboard:append("unnamedplus")

-- line space
opt.linespace = 0

-- highlight line under the cursor
opt.cursorline = true
opt.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"

-- enable lazyredraw
opt.lazyredraw = true

-- enable line number
opt.number = true

-- show matching brackets
opt.showmatch = true

-- hightlights search results
opt.hlsearch = true
opt.incsearch = true

-- wrap long line
opt.wrap = false
opt.wrapscan = true

-- case
opt.ignorecase = true
opt.smartcase = true

-- color column
opt.colorcolumn = "+1"

-- you can use ctrl-d to show wild list
opt.wildmenu = true

-- search path for gf command
opt.path = ".,..,,"

-- disable undo file
opt.undofile = false

-- allow to bg unsaved buffer
opt.hidden = true

-- auto read when other program have modified the same file
opt.autoread = true
cmd "autocmd FocusGained * :checktime"

-- number format
opt.nrformats = "hex"

-- I don't like vim style fold
opt.foldenable = false

-- diff mode
opt.diffopt = "filler,vertical"

-- disable swap file
opt.swapfile = false

-- disable preview window
opt.completeopt:remove("preview")

-- disable backup file
opt.backup = false
opt.writebackup = false

-- having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
-- delays and poor user experience.
opt.updatetime = 300

-- window mininum height
opt.winminheight = 0

-- timeout len
opt.timeoutlen = 500

-- sign column
opt.signcolumn = "number"

cmd [[
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
    autocmd FileType html setlocal tabstop=2 shiftwidth=2
    autocmd FileType vue setlocal tabstop=2 shiftwidth=2
    autocmd FileType javascript setlocal tabstop=2 shiftwidth=2
    autocmd FileType rust let delimitMate_quotes = "\" `"
augroup END

" edit binary using xxd-format!
augroup binary_edit_group
    autocmd!
    autocmd BufReadPre   *.bin let   &bin=1
    autocmd BufReadPost  *.bin if    &bin    | %!xxd
    autocmd BufReadPost  *.bin set   ft=xxd  | endif
    autocmd BufWritePre  *.bin if    &bin    | %!xxd -r
    autocmd BufWritePre  *.bin endif
    autocmd BufWritePost *.bin if    &bin    | %!xxd
    autocmd BufWritePost *.bin set   nomod   | endif
augroup END

" save file with nobomb
augroup save_with_nobomb
    autocmd!
    autocmd BufWritePre *.lua setlocal nobomb
augroup END

augroup on_enter_buffer
    autocmd!
    autocmd BufEnter * EnableStripWhitespaceOnSave
    autocmd BufEnter * DisableWhitespace
augroup END

" filetype alias
" augroup align_filetype_group
"     autocmd!
"     autocmd BufRead,BufNewFile *.txt setlocal filetype=lua
" augroup END

" augroup on_enter_vim
    " autocmd!
    " autocmd VimEnter * NERDTree
    " autocmd VimEnter * nested :TagbarOpen
" augroup END

" augroup save_retab
"     autocmd!
"     autocmd BufWritePre * :retab
" augroup END

function! __ExecuteCommand(str)
    exe "menu __magic_menu.__sub_magic_menu :" . a:str
    emenu __magic_menu.__sub_magic_menu
    unmenu __magic_menu
endfunction

function! __VisualSelection(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]#')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'backward'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'forward'
        execute "normal /" . l:pattern . "^M"
    elseif a:direction == 'ack_smartcase'
        execute __ExecuteCommand("Ack --smart-case " . "\"" . l:pattern . "\"" . "<cr>")
    elseif a:direction == 'ack_wholeword'
        execute __ExecuteCommand("Ack --smart-case -w " . "\"" . l:pattern . "\"" . "<cr>")
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

" search in visual mode
vnoremap <silent> *     :call __VisualSelection('forward')<cr>:set hlsearch<cr>
vnoremap <silent> #     :call __VisualSelection('backward')<cr>:set hlsearch<cr>
vnoremap <leader>v      :call __VisualSelection('ack_smartcase')<cr>
vnoremap <localleader>v :call __VisualSelection('ack_wholeword')<cr>

" get highlight group of cursor word
function! SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
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
    "matchit"
}
for _, plugin in pairs(disabled_built_ins) do
    g["loaded_" .. plugin] = 1
end
