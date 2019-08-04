#!/bin/sh

# link
ln -f -s ~/dotfiles/_zshenv ~/.zshenv
ln -f -s ~/dotfiles/_zshrc ~/.zshrc
ln -f -s ~/dotfiles/_nvimrc ~/.config/nvim/init.vim
ln -f -s ~/dotfiles/_tmux.conf ~/.tmux.conf
ln -f -s ~/dotfiles/_gitconfig ~/.gitconfig
ln -f -s ~/dotfiles/_clang-format ~/.clang-format
ln -f -s ~/dotfiles/_golangci.yml ~/.golangci.yml
ln -f -s ~/dotfiles/_flake8 ~/.flake8
ln -f -s ~/dotfiles/_luacheckrc ~/.luacheckrc
ln -f -s ~/dotfiles/_mongorc.js ~/.mongorc.js
ln -f -s ~/dotfiles/_tigrc ~/.tigrc
ln -f -s ~/dotfiles/_coc-settings.json ~/.config/nvim/coc-settings.json
mkdir -p ~/.subversion
ln -f -s ~/dotfiles/_svn_config ~/.subversion/config
ln -f -s ~/dotfiles/_proxy_config ~/.proxy_config

# dependecy
# sudo apt install -y xclip
# sudo apt install -y silversearcher-ag
# sudo -H pip2 install --upgrade pip
# sudo -H pip2 install --upgrade pynvim
# sudo -H pip3 install --upgrade pip
# sudo -H pip3 install --upgrade pynvim
# sudo -H pip3 install --upgrade yapf
# sudo -H pip3 install --upgrade flake8
# go get -u honnef.co/go/tools/cmd/staticcheck
# sudo luarocks install luacheck
# sudo luarocks install --server=http://luarocks.org/dev lua-lsp
# go get -u github.com/sourcegraph/go-langserver

# PlugUpgrade
# PlugUpdate
# CocInstall coc-python
