#!/bin/sh

# link
ln -f -s ~/dotfiles/_zshenv ~/.zshenv
ln -f -s ~/dotfiles/_zshrc ~/.zshrc
mkdir -p ~/.config/nvim
ln -f -s ~/dotfiles/_nvim.lua ~/.config/nvim/init.lua
ln -f -s ~/dotfiles/_tmux.conf ~/.tmux.conf
ln -f -s ~/dotfiles/_gitconfig ~/.gitconfig
ln -f -s ~/dotfiles/_clang-format ~/.clang-format
ln -f -s ~/dotfiles/_golangci.yml ~/.golangci.yml
ln -f -s ~/dotfiles/_flake8 ~/.flake8
ln -f -s ~/dotfiles/_luacheckrc ~/.luacheckrc
ln -f -s ~/dotfiles/_lua_format ~/.lua-format
ln -f -s ~/dotfiles/_stylua.toml ~/.stylua.toml
ln -f -s ~/dotfiles/_mongorc.js ~/.mongorc.js
ln -f -s ~/dotfiles/_tigrc ~/.tigrc
ln -f -s ~/dotfiles/_coc-settings.json ~/.config/nvim/coc-settings.json
mkdir -p ~/.subversion
ln -f -s ~/dotfiles/_svn_config ~/.subversion/config
ln -f -s ~/dotfiles/_proxy_config ~/.proxy_config
# ln -f -s ~/dotfiles/_ssh_config ~/.ssh/config
mkdir -p ~/.config/ctags
ln -f -s ~/dotfiles/_ctags ~/.config/ctags/my.ctags
ln -f -s ~/dotfiles/_xprofile ~/.xprofile
ln -f -s ~/dotfiles/_gdbinit ~/.gdbinit
wget -O ~/.gdbinit-gef.py -q http://gef.blah.cat/py
ln -f -s ~/dotfiles/_inputrc ~/.inputrc
ln -f -s ~/dotfiles/_prettierrc ~/.prettierrc
ln -f -s ~/dotfiles/_npmrc ~/.npmrc

# dependecy
# sudo apt install -y xsel
# sudo apt install -y silversearcher-ag
# sudo -H pip2 install --upgrade pip
# sudo -H pip2 install --upgrade pynvim
# sudo -H pip3 install --upgrade pip
# sudo -H pip3 install --upgrade pynvim
# sudo -H pip3 install --upgrade yapf
# sudo -H pip3 install --upgrade flake8
# go get -u honnef.co/go/tools/cmd/staticcheck
# sudo luarocks install luacheck
# go get golang.org/x/tools/gopls@latest

# PlugUpgrade
# PlugUpdate
# CocInstall coc-python
