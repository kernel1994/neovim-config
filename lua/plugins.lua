-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use { 'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/plenary.nvim'}} }
    use { 'ggandor/lightspeed.nvim', requires = {{'tpope/vim-repeat'}} }
    use 'neovim/nvim-lspconfig'
    use 'jiangmiao/auto-pairs'
    use 'kylechui/nvim-surround'
    use 'akinsho/toggleterm.nvim'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'preservim/tagbar'
    use 'kernel1994/vim-monokai-tasty'
end)
