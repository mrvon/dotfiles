"-------------------------------Operating System-------------------------------
let g:is_windows                                            =0
let g:is_mac                                                =0
let g:is_linux                                              =0
let g:is_gui                                                =0
if(has("win32") || has("win64"))
    let g:is_windows                                        =1
elseif has('mac')
    let g:is_mac                                            =1
else
    let g:is_linux                                          =1
endif
if(has("gui"))
    let g:is_gui                                            =1
endif

"-------------------------------Path-------------------------------------------
if g:is_windows
    let $MYVIMPATH                                          ='E:/vimrc/'
    let $MYVIMBINPATH                                       ='E:/vim/'
    let $MYVIMRUNTIME                                       =$MYVIMBINPATH.'vim80'
    let $MYVIMRC                                            =$MYVIMPATH.'_vimrc'
    let $MYVIMFILE                                          =$MYVIMBINPATH.'vimfiles'
elseif g:is_mac
    let $MYVIMPATH                                          ='~/'
    let $MYVIMRC                                            =$MYVIMPATH.'.vimrc'
    let $MYVIMFILE                                          =$MYVIMPATH.'.vim'
elseif g:is_linux
    let $MYVIMPATH                                          ='~/'
    let $MYVIMRC                                            =$MYVIMPATH.'.vimrc'
    let $MYVIMFILE                                          =$MYVIMPATH.'.vim'
endif

"-------------------------------Leader Key-------------------------------------
let mapleader                                               =" "
let maplocalleader                                          =","

"-------------------------------Vundle - Plugin Package Manager----------------
set nocompatible                " required
filetype off                    " required

" set the runtime path to include Vundle and initialize
set rtp+=$MYVIMFILE/bundle/Vundle.vim/
let path=$MYVIMFILE . '/bundle'
call vundle#begin(path)
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Vim-Airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" NERDTree
Plugin 'scrooloose/nerdtree'

" NERDCommenter
Plugin 'scrooloose/nerdcommenter'

" Syntastic
Plugin 'scrooloose/syntastic'

" YCM
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'rhysd/vim-clang-format'

" DelimitMate
Plugin 'Raimondi/delimitMate'

" Vim-unimpaired
Plugin 'tpope/vim-unimpaired'

" Ack/Ag
Plugin 'mileszs/ack.vim'

" Indent guides
Plugin 'nathanaelkane/vim-indent-guides'

" My color
Plugin 'altercation/vim-colors-solarized'
Plugin 'chriskempson/base16-vim'
Plugin 'mrvon/vim-tomorrow-theme'
Plugin 'morhetz/gruvbox'

" Ctrlp
Plugin 'kien/ctrlp.vim'

" Tag Bar
Plugin 'majutsushi/tagbar'

" Extend Match %
Plugin 'matchit.zip'

" Tabular for align
Plugin 'godlygeek/tabular'

" Vim Markdown
Plugin 'plasticboy/vim-markdown'

" Stronger Signature
Plugin 'kshenoy/vim-signature'

" Quickly surround
Plugin 'tpope/vim-surround'

" Go
Plugin 'mrvon/vim-go'

" Power Color
Plugin 'ap/vim-css-color'

" Stronger repeat
Plugin 'tpope/vim-repeat'

" Git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" Writing
Plugin 'reedes/vim-pencil'
Plugin 'reedes/vim-wordy'

" Vim as a man reader
Plugin 'vim-utils/vim-man'

" Javascript
Plugin 'pangloss/vim-javascript'

" Exilir
Plugin 'elixir-lang/vim-elixir'

" Whitespace
Plugin 'ntpeters/vim-better-whitespace'

" GLSL
Plugin 'tikhomirov/vim-glsl'

" Typescript
Plugin 'leafgarland/typescript-vim'

" Emmet / ZenCoding
Plugin 'mattn/emmet-vim'

" Beautiful Startup Screen
Plugin 'mhinz/vim-startify'

"------------------------------------------------------------------------------

" All of your Plugins must be added before the following line
call vundle#end()               " required
filetype plugin indent on       " required
" Brief help
" :PluginList               - list configured plugins
" :PluginInstall(!)         - install (update) plugins
" :PluginSearch(!) foo      - search (or refresh cache first) for foo
" :PluginClean(!)           - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"-------------------------------My Color My Taste------------------------------
" Adjust My color scheme by system time
" if strftime("%H") >= 9 && strftime("%H") <= 12
if g:is_windows
    set background                                          =dark
    let $MYCOLOR                                            ='gruvbox'
    let $MYAIR                                              ='gruvbox'
    let $MYITALIC                                           =0
elseif g:is_mac
    set background                                          =dark
    let $MYCOLOR                                            ='gruvbox'
    let $MYAIR                                              ='gruvbox'
    let $MYITALIC                                           =1
elseif g:is_linux
    set background                                          =dark
    let $MYCOLOR                                            ='gruvbox'
    let $MYAIR                                              ='gruvbox'
    let $MYITALIC                                           =1
endif
colorscheme                                                 $MYCOLOR

if g:is_windows
    set guifont                                             =Monaco:h11
elseif g:is_mac
    set guifont                                             =MonacoB:h15
elseif g:is_linux
    set guifont                                             =Monaco\ 13
endif
"-------------------------------Encoding---------------------------------------
" Always use utf-8
set encoding                                                =utf-8
set termencoding                                            =utf-8
set fileencoding                                            =utf-8
set fileencodings                                           =ucs-bom,utf-8,cp936,gb18030,gb2312,big5,default,latin1
set langmenu                                                =en_US.utf-8
set fileformats                                             =unix,dos,mac
if g:is_windows
    source                                                  $MYVIMRUNTIME/delmenu.vim
    source                                                  $MYVIMRUNTIME/menu.vim
endif

if g:is_mac || g:is_windows
    language messages                                       en_US.utf-8
endif

"-------------------------------GUI Options------------------------------------
" Keep your menu more simple
if g:is_gui
set guioptions                                              -=l
set guioptions                                              -=L
set guioptions                                              -=r
set guioptions                                              -=R
set guioptions                                              -=m
set guioptions                                              -=T
endif

" Vim in tmux, clearing uses the current background color
set t_ut=

"-------------------------------Set Column-------------------------------------
set columns                                                 =100
"-------------------------------Set Row----------------------------------------
set lines                                                   =30

"-------------------------------Tab Key----------------------------------------
set shiftwidth                                              =4
set tabstop                                                 =4
set softtabstop                                             =0
set shiftround
set expandtab
set backspace                                               =indent,eol,start
set autoindent
set smartindent
set printoptions                                            =paper:a4

"-------------------------------Max History Item-------------------------------
set history                                                 =200

"-------------------------------Ruler And Statusline---------------------------
set noruler
set laststatus                                              =2
set scrolloff                                               =5

"-------------------------------Magic------------------------------------------
set magic

"-------------------------------Memory Limit Problem---------------------------
set maxmem                                                  =100
set maxmempattern                                           =100
set maxmemtot                                               =100

"-------------------------------Share Clipboard With Windows-------------------
if g:is_mac || g:is_windows
    set clipboard                                           +=unnamed
elseif g:is_linux
    set clipboard                                           =unnamedplus
endif

"-------------------------------Line Space-------------------------------------
set linespace                                               =0

"-------------------------------Highlight Line Under The Cursor----------------
set cursorline

"-------------------------------Lazy Redraw------------------------------------
set nolazyredraw

"-------------------------------Display Line Number----------------------------
set number

"-------------------------------Show Matching Bracets--------------------------
set showmatch

"-------------------------------Highlight Search-------------------------------
" hightlights search results
set hlsearch
" shows search matches as you type
set incsearch

"-------------------------------Wrap Long Line---------------------------------
set nowrap
"set linebreak

"-------------------------------Wrap Scan--------------------------------------
set wrapscan

"-------------------------------Ignore Case And Smart Case---------------------
" if all lowercase, ignore case
set ignorecase
" if caps, watch case
set smartcase

"-------------------------------Long line--------------------------------------
" Always notice you do not write a long line
" Auto break a line
set textwidth                                               =80
" Show the long line range
set colorcolumn                                             =+1

"-------------------------------Command Wild Menu------------------------------
" You can use Ctrl-d to show wild list
set wildmenu

"-------------------------------gf Search Path---------------------------------
" Search path for gf command
set path                                                    =.,..,,

"-------------------------------Do Not Use Undofile----------------------------
set noundofile

"-------------------------------Allow To bg Unsaved Buffer---------------------
" I prefer use Ctrl-p Ctrl-f to list all buffer
set hidden

"-------------------------------Auto Read -------------------------------------
" Auto read when other program have modified the same file
set autoread

"-------------------------------Number Format----------------------------------
set nrformats                                               =hex

"-------------------------------Disable Fold-----------------------------------
" I don't like vim style fold
set nofoldenable

"-------------------------------Diff Mode--------------------------------------
set diffopt                                                 =filler,vertical

"-------------------------------Disable Swap file------------------------------
set noswapfile

"-------------------------------Disable preview window-------------------------
set completeopt                                             -=preview

"-------------------------------My favorite plugin-----------------------------
"-------------------------------Airline----------------------------------------
let g:airline_theme                                         =$MYAIR
let g:airline_detect_modified                               =1
let g:airline_detect_paste                                  =1
let g:airline_detect_crypt                                  =1
let g:airline_detect_spell                                  =1
let g:airline_powerline_fonts                               =0
let g:airline#extensions#tabline#enabled                    =1
let g:airline#extensions#tabline#show_buffers               =1
let g:airline#extensions#tabline#tab_nr_type                =1
let g:airline#extensions#tabline#show_tab_nr                =1
let g:airline#extensions#tabline#formatter                  ='default'
let g:airline#extensions#tabline#buffer_nr_show             =1
let g:airline#extensions#tabline#buffer_nr_format           ='%s: '
let g:airline#extensions#whitespace#checks                  =[]
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" unicode symbols
let g:airline_left_sep = '»'
let g:airline_right_sep = '«'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'
"-------------------------------NERDTree---------------------------------------
nnoremap <leader>n                                          :NERDTreeToggle<CR>
let g:NERDTreeAutoCenter                                    =1
let g:NERDChristmasTree                                     =1
let g:NERDTreeWinSize                                       =25
"-------------------------------NERDCommenter----------------------------------
let g:NERDCreateDefaultMappings                             =0
let g:NERDSpaceDelims                                       =1
let g:NERDAltDelims_asm                                     =1
map <leader>cc                                              <plug>NERDCommenterAlignLeft
map <leader>cs                                              <plug>NERDCommenterSexy
map <leader>cu                                              <plug>NERDCommenterUncomment
"-------------------------------YCM--------------------------------------------
let g:ycm_confirm_extra_conf                                =0
let g:ycm_key_detailed_diagnostics                          ='<leader>d'
let g:ycm_filetype_blacklist                                ={}
let g:ycm_complete_in_comments                              =1
let g:ycm_complete_in_strings                               =1
let g:ycm_collect_identifiers_from_comments_and_strings     =1
nnoremap <leader>gd                                         :YcmComplete GoTo<CR>
"-------------------------------ColorCode--------------------------------------
hi link Member                                              Identifier
hi link Variable                                            Identifier
hi link Namespace                                           Operator
hi link EnumConstant                                        Constant
hi link StructDecl                                          Structure
hi link UnionDecl                                           Structure
hi link ClassDecl                                           Structure
hi link EnumDecl                                            Structure
"-----------------------------------------Solarized----------------------------
let g:solarized_termcolors                                  =256
let g:solarized_termtrans                                   =0
let g:solarized_degrade                                     =0
let g:solarized_bold                                        =1
let g:solarized_underline                                   =1
let g:solarized_italic                                      =$MYITALIC
let g:solarized_contrast                                    ="normal"
let g:solarized_visibility                                  ="normal"
let g:solarized_hitrail                                     =0
let g:solarized_menu                                        =1
"-----------------------------------------Gruvbox------------------------------
let g:gruvbox_italic                                        =$MYITALIC
"-----------------------------------------Indent guides------------------------
let g:indent_guides_enable_on_vim_startup                   =1
let g:indent_guides_default_mapping                         =0
"-----------------------------------------CtrlP--------------------------------
"Ctrl-P             Search file in project
"Ctrl-P Ctrl-F      View all buffer
let g:ctrlp_working_path_mode                               =0
let g:ctrlp_by_filename                                     =1
let g:ctrlp_match_window                                    ='bottom,order:btt,min:1,max:10,results:15'
let g:ctrlp_clear_cache_on_exit                             =1
let g:ctrlp_extensions                                      =[]
" Excluding version control directories
if g:is_windows
    set wildignore                                          +=*\\.git\\*,*\\.hg\\*,*\\.svn\\*  " Windows ('noshellslash')

    let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\v\.(exe|so|dll)$',
    \ }

elseif g:is_mac
    set wildignore                                          +=*/.git/*,*/.hg/*,*/.svn/*        " Linux/MacOSX

    let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\v\.(exe|so|dll)$',
    \ }
endif
if executable('ag')
    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    if g:is_windows
        let s:ctrlp_fallback = 'ag -i --nocolor --nogroup --hidden -g "" %s --ignore .git --ignore .svn --ignore .hg'
    else
        let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    endif
    " ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
endif

"-----------------------------------------TagBar-------------------------------
nnoremap <leader>t                                          :TagbarToggle<cr>
"-----------------------------------------Vim-Markdown-------------------------
let g:vim_markdown_folding_disabled                         =1
"-----------------------------------------Git----------------------------------
let g:gitgutter_map_keys                                    =0
" nmap [c                                                   <Plug>GitGutterPrevHunk
" nmap ]c                                                   <Plug>GitGutterNextHunk
" nmap <Leader>hs                                           <Plug>GitGutterStageHunk
" nmap <Leader>hr                                           <Plug>GitGutterRevertHunk
" nmap <Leader>hp                                           <Plug>GitGutterPreviewHunk
"-----------------------------------------VimGo--------------------------------
let g:go_bin_path                                           =$GOPATH . "/bin/"
let g:go_fmt_command                                        ="gofmt"
augroup go_shortcut
    autocmd!
    autocmd FileType go nmap <leader>r  <Plug>(go-run)
    autocmd FileType go nmap <leader>b  <Plug>(go-build)
    autocmd FileType go nmap <leader>c  <Plug>(go-coverage)
    autocmd FileType go nmap <leader>ds <Plug>(go-def-split)
    autocmd FileType go nmap <leader>dv <Plug>(go-def-vertical)
    autocmd FileType go nmap <leader>dt <Plug>(go-def-tab)
    autocmd FileType go nmap <leader>gd <Plug>(go-doc)
    autocmd FileType go nmap <leader>gv <Plug>(go-doc-vertical)
    autocmd FileType go nmap <leader>s  <Plug>(go-implements)
    autocmd FileType go nmap <leader>i  <Plug>(go-imports)
    autocmd FileType go nmap <leader>f  <Plug>(go-info)
    autocmd FileType go nmap <leader>e  <Plug>(go-rename)
augroup END
let g:go_highlight_functions                                =1
let g:go_highlight_methods                                  =1
let g:go_highlight_fields                                   =1
let g:go_highlight_types                                    =1
let g:go_highlight_operators                                =1
let g:go_highlight_build_constraints                        =1
let g:go_template_autocreate                                =0
"-----------------------------------------Pencil-------------------------------
nnoremap <silent> Q                                         gqip
xnoremap <silent> Q                                         gq
nnoremap <silent> <leader>Q                                 vapJgwip
let g:pencil#autoformat                                     =0      " 0=disable, 1=enable (def)
augroup pencil
    autocmd!
    autocmd FileType markdown call pencil#init()
augroup END
"-----------------------------------------Clang Format-------------------------
let g:clang_format#style_options = {
            \        "BasedOnStyle" : "WebKit",
            \        "AccessModifierOffset" : -4,
            \        "AlignAfterOpenBracket" : "AlwaysBreak",
            \        "AlignConsecutiveAssignments" : "false",
            \        "AlignConsecutiveDeclarations" : "false",
            \        "AlignOperands" : "false",
            \        "AlignTrailingComments" : "true",
            \        "AllowAllParametersOfDeclarationOnNextLine" : "false",
            \        "AllowShortBlocksOnASingleLine" : "false",
            \        "AllowShortCaseLabelsOnASingleLine" : "false",
            \        "AllowShortFunctionsOnASingleLine" : "None",
            \        "AllowShortIfStatementsOnASingleLine" : "false",
            \        "AllowShortLoopsOnASingleLine" : "false",
            \        "AlwaysBreakAfterDefinitionReturnType" : "false",
            \        "AlwaysBreakAfterReturnType" : "None",
            \        "AlwaysBreakBeforeMultilineStrings" : "true",
            \        "AlwaysBreakTemplateDeclarations" : "true",
            \        "BinPackArguments" : "false",
            \        "BinPackParameters" : "false",
            \        "BreakBeforeBraces" : "Custom",
            \        "BraceWrapping" : {
            \            "AfterClass" : "false",
            \            "AfterControlStatement" : "false",
            \            "AfterEnum" : "false",
            \            "AfterNamespace" : "false",
            \            "AfterObjCDeclaration" : "false",
            \            "AfterStruct" : "false",
            \            "AfterUnion" : "false",
            \            "BeforeCatch" : "false",
            \            "BeforeElse" : "false",
            \            "IndentBraces" : "false",
            \            "AfterFunction" : "false",
            \        },
            \        "IndentWidth" : 4,
            \        "ColumnLimit" : 200 }
nnoremap <leader>C                                          :ClangFormatAutoToggle<cr>
"-----------------------------------------Mrvon Special Key--------------------
" Thanks to http://learnvimscriptthehardway.stevelosh.com/
" Use jk instead of esc, This excellent idea come from steve
inoremap jk                                                 <esc>
inoremap <esc>                                              <nop>
"-----------------------------------------Resize windows-----------------------
nnoremap <Up>                                               <c-w>3+
nnoremap <Down>                                             <c-w>3-
nnoremap <Left>                                             <c-w>3<
nnoremap <Right>                                            <c-w>3>
"-----------------------------------------Moving between windows---------------
" origin switch window key-mappings is too hard for me
nnoremap <c-k>                                              <c-w>k
nnoremap <c-j>                                              <c-w>j
nnoremap <c-h>                                              <c-w>h
nnoremap <c-l>                                              <c-w>l

" Does not indent when I input "else" in some filetype. That's a problem in Vim.
" Quickly Auto Indent When leave insert mode
function! QuicklyAutoIndent()
    let l:cursor_position = getpos(".")
    normal! ==
    call setpos(".", l:cursor_position)
endfunction
augroup quickly_indent
    autocmd!
    autocmd InsertLeave *.py,*.lua                          :call QuicklyAutoIndent()
augroup END

" edit the alternate file.
" mostly the alternate file is the previously edited file.
nnoremap <leader><leader>                                   <c-^>

" edit my vimrc
nnoremap <leader>ev                                         :vsplit $MYVIMRC<cr>

" replace all tab with space
nnoremap <localleader>rt                                    :%ret! 4<cr>

" reload my vimrc
if g:is_windows && g:is_gui
    nnoremap <leader>sv                                     :source $MYVIMRC<cr>:call libcallnr("vimtweak.dll", "EnableMaximize", 1)<CR>
else
    nnoremap <leader>sv                                     :source $MYVIMRC<cr>
endif

" easy way to type my email and copyright information
iabbrev  @@                                                 mrvon@qq.com

" some abbrev
cabbrev  W                                                  w
cabbrev  Q                                                  q
cabbrev  WQ                                                 wq
cabbrev  Wq                                                 wq

" use a \" or \' to surround this word
" nnoremap <leader>"                                          viw<esc>a"<esc>hbi"<esc>lel
" nnoremap <leader>'                                          viw<esc>a'<esc>hbi'<esc>lel

" use a \" or \' to surround text which we selected visually
" vnoremap <leader>"                                          <esc>`<i"<esc>`>a"<esc>
" vnoremap <leader>'                                          <esc>`<i'<esc>`>a'<esc>

" use a pair of "{}" to surround this line
" nnoremap <leader>{                                          O{<esc>jo}<esc>


" Y is a strong y, D is a strong d in Vim default setting
" as you can see, a stronger h and a stronger l
nnoremap H                                                  0
vnoremap H                                                  0
nnoremap L                                                  $
vnoremap L                                                  $
" nnoremap J                                                <nop>
" vnoremap J                                                <nop>
" this map seem do not work
" nnoremap K                                                <nop>

" comment a line
"augroup  comment_group
"    autocmd!
"    autocmd                                                 FileType cpp nnoremap <buffer> <localleader>c I//<esc>
"    autocmd                                                 FileType lua nnoremap <buffer> <localleader>c I--<esc>
"    autocmd                                                 FileType vim nnoremap <buffer> <localleader>c I"<esc>
"augroup  END

" movement mappings
" find In       Next        ( or [
" find In       Last        ( or [
" find Around   Next        ( or [
" find Around   Last        ( or [
" onoremap i(                                                :<c-u>normal! f(vi(<cr>
" onoremap a(                                                :<c-u>normal! f(va(<cr>
" onoremap i[                                                :<c-u>normal! f[vi[<cr>
" onoremap a[                                                :<c-u>normal! f[va[<cr>
" onoremap il(                                               :<c-u>normal! F(vi(<cr>
" onoremap al(                                               :<c-u>normal! F(va(<cr>
" onoremap il[                                               :<c-u>normal! F[vi[<cr>
" onoremap al[                                               :<c-u>normal! F[va[<cr>


" Vimscript file settings
augroup filetype_vim
    autocmd!
    autocmd                                                 FileType vim setlocal foldmethod=marker
augroup END

" Match
" nnoremap <leader>w                                          :match Error /\v +$/<cr>
" nnoremap <leader>W                                          :match none<cr>

" Always use Very Magic search
nnoremap /                                                  /\v

" Closing last search highlight
nnoremap <leader>h                                          :nohlsearch<cr>

" Using exists syntax file
" augroup alias_syntax
"     autocmd!
"     autocmd                                                 BufRead,BufNewFile *.vs,*.fs setlocal filetype=glsl
" augroup END

" edit binary using xxd-format!
augroup binary_edit_group
    autocmd!
    autocmd                                                 BufReadPre      *.bin let   &bin=1
    autocmd                                                 BufReadPost     *.bin if    &bin    | %!xxd
    autocmd                                                 BufReadPost     *.bin set   ft=xxd  | endif
    autocmd                                                 BufWritePre     *.bin if    &bin    | %!xxd -r
    autocmd                                                 BufWritePre     *.bin endif
    autocmd                                                 BufWritePost    *.bin if    &bin    | %!xxd
    autocmd                                                 BufWritePost    *.bin set   nomod   | endif
augroup END

" save file with nobomb
augroup save_with_nobomb
    autocmd!
    autocmd                                                 BufWritePre *.lua setlocal nobomb
augroup END

" Quickly Traverse Tab (I prefer buffer to tab)
"noremap <silent> <F7>                                       :tabp<cr>
"noremap <silent> <F8>                                       :tabn<cr>

" Quickly Traverse Buffer (tpope/vim-unimpaired already implement it)
"noremap <silent> [b                                         :bprevious<cr>
"noremap <silent> ]b                                         :bnext<cr>
"noremap <silent> [B                                         :bfirst<cr>
"noremap <silent> ]B                                         :blast<cr>
" Previous matched line
"noremap <silent> [q                                         :cprevious<cr>
" Next matched line
"noremap <silent> ]q                                         :cnext<cr>

" Insert current file name
inoremap <localleader>fn                                    <C-R>=expand("%:t")<CR>
cnoremap <localleader>fn                                    <C-R>=expand("%:t")<CR>

" see Help v_p
vnoremap p                                                  "0p

"------------------------------------------------------------------------------
function! __ExecuteCommand(str)
    exe "menu __magic_menu.__sub_magic_menu :" . a:str
    emenu __magic_menu.__sub_magic_menu
    unmenu __magic_menu
endfunction

function!                                                   __VisualSelection(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]#')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'backward'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'forward'
        execute "normal /" . l:pattern . "^M"
    elseif a:direction == 'ack_smartcase'
        execute __ExecuteCommand("Ack --smart-case " . "\"" . l:pattern . "\"" . "<CR>")
    elseif a:direction == 'ack_wholeword'
        execute __ExecuteCommand("Ack --smart-case -w " . "\"" . l:pattern . "\"" . "<CR>")
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

" quick search using Ag
nnoremap <leader>vv                                         :Ack<CR>
if executable('ag')
  let g:ackprg = 'ag'
endif
let g:ackhighlight = 1

" search in visual mode
vnoremap <silent> *                                         :call __VisualSelection('forward')<CR>:set hlsearch<CR>
vnoremap <silent> #                                         :call __VisualSelection('backward')<CR>:set hlsearch<CR>
vnoremap <leader>vv                                         :call __VisualSelection('ack_smartcase')<CR>
vnoremap <leader>vw                                         :call __VisualSelection('ack_wholeword')<CR>

" easy copy to system-clipboard
"vnoremap <leader>sy                                        "+y
"nnoremap <leader>sy                                        "+y
" easy paste from system-clipboard
"vnoremap <leader>sp                                        "+p
"nnoremap <leader>sp                                        "+p

"------------------------------------------------------------------------------
"Close All Buffers But This One
com! -bar -bang BdOnly                                      call __BufferDeleteOnly(<q-bang>)
com! -bar -bang BdReload                                    call __BufferReload(<q-bang>)
function!                                                   __BufferDeleteOnly(bang)
    let bd_cmd = "bdelete"
    let cur_buffer_id = bufnr('%')
    let last_buffer_id = bufnr('$')
    let nerd_tree_buff_name = 'NERD_tree'

    let id = 1
    while id <= last_buffer_id
        if id != cur_buffer_id
            let name = bufname(id)
            if stridx(name, nerd_tree_buff_name) == -1
                call __ExecCheckBdErrs(bd_cmd . id)
            endif
        endif
        let id = id + 1
    endwhile
endfunction

function!                                                   __BufferReload(bang)
    let cur_filename = expand("%")

    let bd_cmd = "bd "
    call __ExecCheckBdErrs(bd_cmd)

    let edit_cmd = "edit "
    call __ExecCheckBdErrs(edit_cmd . cur_filename)
endfunction

function!                                                   __ExecCheckBdErrs(bdrangecmd)
    try
        exec a:bdrangecmd
    catch /:E51[567]:/
        " no buffers unloaded/deleted/wiped out: ignore
    catch
        echohl ErrorMsg
        echomsg matchstr(v:exception, ':\zsE.*')
        echohl none
    endtry
endfunction

if g:is_windows && g:is_gui
    nnoremap <leader>mw                                    :call libcallnr("vimtweak.dll", "EnableMaximize", 1)<CR>
    nnoremap <leader>mW                                    :call libcallnr("vimtweak.dll", "EnableMaximize", 0)<CR>
    nnoremap <leader>yt                                    :call libcallnr("vimtweak.dll", "EnableTopMost", 1)<CR>
    nnoremap <leader>yT                                    :call libcallnr("vimtweak.dll", "EnableTopMost", 0)<CR>
    nnoremap <leader>aw                                    :call libcallnr("vimtweak.dll", "SetAlpha", 235)<CR>
    nnoremap <leader>aW                                    :call libcallnr("vimtweak.dll", "SetAlpha", 255)<CR>

    augroup on_win_gui_enter
        autocmd!
        autocmd VimEnter * call libcallnr("vimtweak.dll", "SetAlpha", 255)
        autocmd VimEnter * call libcallnr("vimtweak.dll", "EnableMaximize", 1)
        autocmd VimEnter * setlocal vb t_vb=
    augroup END
endif

augroup on_enter_vim
    autocmd!
    " autocmd VimEnter * NERDTree
    " autocmd VimEnter * nested :TagbarOpen
augroup END

augroup on_enter_buffer
    autocmd!
    autocmd BufEnter * EnableStripWhitespaceOnSave
    autocmd BufEnter * DisableWhitespace
augroup END

augroup save_retab
    autocmd!
    autocmd                                                 BufWritePre * :retab
augroup END

" Don't move it, let it on the bottom of this file, Otherwise it will don't work.
" Open Syntax HighLight
if exists("g:syntax_on")
    syntax                                                  off
else
    syntax                                                  enable
endif
syntax                                                      on
