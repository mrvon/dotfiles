-- luacheck: ignore 113
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- Packer can manage itself
    use { 'wbthomason/packer.nvim' }
    use { 'nvim-telescope/telescope.nvim',
        requires = {
            {'nvim-lua/plenary.nvim'}
        }
    }
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use { 'Raimondi/delimitMate' }
    use { 'andymass/vim-matchup' }
    use { 'christoomey/vim-tmux-navigator' }
    use { 'dense-analysis/ale' }
    use { 'editorconfig/editorconfig-vim' }
    use { 'fatih/vim-go', run = ':GoInstallBinaries' }
    use { 'jsfaint/gen_tags.vim' }
    use { 'mhinz/vim-signify' }
    use { 'mhinz/vim-startify' }
    use { 'morhetz/gruvbox' }
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use { 'tpope/vim-commentary' }
    use { 'tpope/vim-fugitive' }
    use { 'tpope/vim-repeat' }
    use { 'tpope/vim-surround' }
    use { 'tpope/vim-unimpaired' }
    use { 'vim-airline/vim-airline' }
    use { 'vim-airline/vim-airline-themes' }
end)
