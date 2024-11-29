# Happy Hacking #

### install ###

```sh
$ ./install.sh
```

### install fonts ###

```sh
$ cp your_font.ttf ~/.local/share/fonts
$ fc-cache -vf
```

### tools ###
+ https://github.com/ggreer/the_silver_searcher
+ https://github.com/BurntSushi/ripgrep
+ https://github.com/git/git
+ https://github.com/luarocks/luarocks
+ https://github.com/mpeterv/luacheck
+ https://github.com/sharkdp/fd
+ https://github.com/koalaman/shellcheck

### shell ###
+ https://github.com/robbyrussell/oh-my-zsh
+ https://github.com/romkatv/powerlevel10k
+ https://github.com/zsh-users/zsh-autosuggestions
+ https://github.com/zsh-users/zsh-syntax-highlighting
+ https://github.com/tamcore/autoupdate-oh-my-zsh-plugins

### neovim ###
+ https://github.com/neovim/neovim

:CocInstall coc-tsserver
:CocInstall coc-python
:CocInstall coc-json
:CocInstall coc-html

### lua ###

```sh
wget https://www.lua.org/ftp/lua-5.3.5.tar.gz
tar zxvf lua-5.3.5.tar.gz
cd lua-5.3.5
make linux
sudo make linux install
```

### gvm ###

```sh
zsh < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
gvm install go1.20
```

### npm ###

```sh
https://github.com/nvm-sh/nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
nvm install node
npm config set registry https://registry.npm.taobao.org
```

### gem ###

```sh
sudo apt install ruby-dev
```

### universal ctags ###

```sh
git clone https://github.com/universal-ctags/ctags ctags_build
cd ctags_build && ./autogen.sh && ./configure
make
sudo make install
```

### tmux ###
+ https://github.com/tmux/tmux
+ https://github.com/tmux-plugins/tpm
+ https://github.com/jimeh/tmux-themepack
+ https://github.com/tmuxinator/tmuxinator

### gnome terminal colorscheme ###
+ https://github.com/Mayccoll/Gogh

### excellent tutorial ###

+ [Practical Vim](https://www.amazon.com/dp/1680501275/ref=olp_product_details?_encoding=UTF8&me=)
+ [Learn vim script the hard way](http://learnvimscriptthehardway.stevelosh.com/)

### tips ###

```sh
%s//gc                    # replace the pattern which you had just searched
%s///gn                   # can calculate how many matching in this file
%s/\r//g                  # delete all ^M
g/^--/d                   # delete all line start from --
g//d                      # delete all line which you had just searched
set ff=unix               # change line break to unix style
e ++enc=cp936             # open file with specific encoding (for instance, cp936)
set expandtab | %retab!   # replace tab with space (expand tab)
set noexpandtab | %retab! # replace space with tab (no expand tab)
%bw                       # wipe out all buffer
gf, gF                    # go to file under cursor
vim --clean               # skips initializations from files and environment variables
history | vim -           # read from stdin
vim --startuptime profile # profile startup time
git remote prune origin   # deletes all stale remote-tracking branches
ctrl+a z                  # tmux zoom in / zoom out
stty sane                 # make your tty sane
reset                     # reset your terminal
ctrl+x ctrl+e             # edit command line in $EDITOR
ctrl+k / ctrl+u / ctrl+w  # command line cut
ctrl+y                    # command line yank
less +F                   # ctrl+c, shift+f, q to quit, use it instead of tail -f
zf                        # create folding, zfa{
zf%                       # create folding with %
zR                        # open all folding
za                        # toggle folding
zj                        # moves the cursor to the next fold
zk                        # moves the cursor to the previous fold
[z                        # move to the start of the current open fold
]z                        # move to the end of the current open fold
gq                        # format the lines by textwidth
ctrl+r                    # reverse-i-search, ctrl+r to next, ctrl+g to cancel
ctrl+s                    # i-search, ctrl+s to next, ctrl+g to cancel
du -ah | sort -h          # find max file (current directory)
du / -ah | sort -hr       # find max file (root directory) in reverse order
df -lh                    # report file system disk space usage
rlwrap -m nc              # enable ctrl-x ctrl-e in rlwrap
tmux list-keys | vim -    # list tmux all key bindings
cfilter pattern           # filter a quickfix list
cfdo %s/old/new/gc        # execute command in each valid entry in the quickfix list
c-h                       # same as backspace, but vim-tmux-navigator will remap c-h
c-d                       # delete the character under the cursor
%!lua                     # execute current buffer as lua code and then replace buffer with result
%!jq                      # format json in current buffer
lsof -p pid               # list files opened by a specific process, given its PID

# disable keyboard in mac
sudo kextunload /System/Library/Extensions/AppleUSBTopCase.kext/Contents/PlugIns/AppleUSBTCKeyboard.kext/
sudo kextload /System/Library/Extensions/AppleUSBTopCase.kext/Contents/PlugIns/AppleUSBTCKeyboard.kext/
```

### install for windows ###

Powershell
```
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force
```

Git Bash
```
mkdir -p ~/AppData/Local/nvim
ln -f -s ~/dotfiles/_nvimrc ~/AppData/Local/nvim/init.vim
ln -f -s ~/dotfiles/_gnvimrc ~/AppData/Local/nvim/ginit.vim
```

```
choco install neovim
choco install ripgrep
choco install ag
choco install universal-ctags
```
