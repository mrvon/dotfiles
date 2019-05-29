#!/bin/sh

ln -f -s ~/dotfiles/_zshenv ~/.zshenv
ln -f -s ~/dotfiles/_zshrc ~/.zshrc
ln -f -s ~/dotfiles/_nvimrc ~/.config/nvim/init.vim
ln -f -s ~/dotfiles/_tmux.conf ~/.tmux.conf
ln -f -s ~/dotfiles/_gitconfig ~/.gitconfig
ln -f -s ~/dotfiles/_clang-format ~/.clang-format
ln -f -s ~/dotfiles/_flake8 ~/.flake8
ln -f -s ~/dotfiles/_luacheckrc ~/.luacheckrc
ln -f -s ~/dotfiles/_mongorc.js ~/.mongorc.js
ln -f -s ~/dotfiles/_tigrc ~/.tigrc
mkdir -p ~/.subversion
ln -f -s ~/dotfiles/svn/config ~/.subversion/config
ln -f -s ~/dotfiles/svn/diffwrap.py ~/.subversion/diffwrap.py
ln -f -s ~/dotfiles/svn/diff3wrap.py ~/.subversion/diff3wrap.py
ln -f -s ~/dotfiles/svn/mergewrap.py ~/.subversion/mergewrap.py
