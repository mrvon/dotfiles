# Happy Hacking #

### link to ###

```sh
$ ln -s ~/dotfiles/_nvimrc ~/.config/nvim/init.vim
$ ln -s ~/dotfiles/_gitconfig ~/.gitconfig
# Linux
$ ln -s ~/dotfiles/_zshrc_linux ~/.zshrc
# Mac
$ ln -s ~/dotfiles/_zshrc_mac ~/.zshrc
```

### install fonts ###

```sh
$ cp ~/dotfiles/font/MonacoForPowerline.ttf ~/.local/share/fonts
$ fc-cache -vf
```

### dependencies ###

+ https://github.com/neovim/neovim
+ https://github.com/ggreer/the_silver_searcher
+ https://github.com/robbyrussell/oh-my-zsh
+ https://github.com/bhilburn/powerlevel9k
+ https://github.com/zsh-users/zsh-autosuggestions
+ https://github.com/git/git
+ https://github.com/luarocks/luarocks
+ https://github.com/mpeterv/luacheck

### ubuntu ###

```sh
$ sudo apt install xclip
$ sudo -H pip2 install --upgrade pip
$ sudo -H pip2 install neovim
$ sudo -H pip3 install --upgrade pip
$ sudo -H pip3 install neovim
```

### excellent tutorial ###

+ [Practical Vim](https://www.amazon.com/dp/1680501275/ref=olp_product_details?_encoding=UTF8&me=)
+ [Learn vim script the hard way](http://learnvimscriptthehardway.stevelosh.com/)

### tips ###

```sh
%s//gc                    # search the pattern before you replace it.
%s///gn                   # can calculate how many matching in this file
%s/\r//g                  # delete all ^M
z<CR>                     # scroll
set ff=unix               # change line break to unix style
e ++enc=cp936             # open file with specific encoding (for instance, cp936)
set expandtab | %retab!   # replace tab with space (expand tab)
set noexpandtab | %retab! # replace space with tab (no expand tab)

history | vim -           # read from stdin

# disable keyboard in mac
sudo kextunload /System/Library/Extensions/AppleUSBTopCase.kext/Contents/PlugIns/AppleUSBTCKeyboard.kext/
sudo kextload /System/Library/Extensions/AppleUSBTopCase.kext/Contents/PlugIns/AppleUSBTCKeyboard.kext/
```
