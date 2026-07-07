#!/bin/sh

# link
ln -f -s ~/dotfiles/_zshenv ~/.zshenv
ln -f -s ~/dotfiles/_zshrc ~/.zshrc
mkdir -p ~/.config/nvim
ln -f -s ~/dotfiles/_nvim.lua ~/.config/nvim/init.lua
ln -f -s ~/dotfiles/_tmux.conf ~/.tmux.conf
ln -f -s ~/dotfiles/_gitconfig ~/.gitconfig
ln -f -s ~/dotfiles/_clang-format ~/.clang-format
ln -f -s ~/dotfiles/_clang-tidy ~/.clang-tidy
ln -f -s ~/dotfiles/_clangd ~/.clangd
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
[ -f ~/dotfiles/_proxy_config ] && ln -f -s ~/dotfiles/_proxy_config ~/.proxy_config
# ln -f -s ~/dotfiles/_ssh_config ~/.ssh/config
mkdir -p ~/.config/ctags
ln -f -s ~/dotfiles/_ctags ~/.config/ctags/my.ctags
ln -f -s ~/dotfiles/_xprofile ~/.xprofile
ln -f -s ~/dotfiles/_inputrc ~/.inputrc
ln -f -s ~/dotfiles/_prettierrc ~/.prettierrc
ln -f -s ~/dotfiles/_npmrc ~/.npmrc
ln -f -s ~/dotfiles/_wezterm.lua ~/.wezterm.lua
# wezterm terminfo (truecolor via Tc; needed for config.term = "wezterm")
if command -v tic >/dev/null 2>&1 && command -v curl >/dev/null 2>&1; then
    _wt=$(mktemp)
    if curl -fsSL -o "$_wt" https://raw.githubusercontent.com/wezterm/wezterm/main/termwiz/data/wezterm.terminfo; then
        tic -x -o ~/.terminfo "$_wt"
    fi
    rm -f "$_wt"
fi
mkdir -p ~/.config/ghostty
ln -f -s ~/dotfiles/_config.ghostty ~/.config/ghostty/config
mkdir -p ~/.config/lazygit
ln -f -s ~/dotfiles/_lazygit.yml ~/.config/lazygit/config.yml
mkdir -p ~/.config/bat
ln -f -s ~/dotfiles/_bat_config ~/.config/bat/config

# dependency
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
