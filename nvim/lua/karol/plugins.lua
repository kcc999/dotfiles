-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.6', requires = { {'nvim-lua/plenary.nvim'} }}
  use {
	  'uloco/bluloco.nvim',
	  requires = { 'rktjmp/lush.nvim' }
  }
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  requires = {
        -- LSP Support
    {'neovim/nvim-lspconfig'},
    -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'L3MON4D3/LuaSnip'},
  },
  use 'nvim-tree/nvim-web-devicons',
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  },
  use {'NeogitOrg/neogit'},
  use {'VonHeikemen/little-wonder'},
  use { "ellisonleao/gruvbox.nvim" },
  use 'Olical/conjure',
  use 'jiangmiao/auto-pairs',
  use 'navarasu/onedark.nvim',
  use 'folke/tokyonight.nvim',
  use 'elixir-editors/vim-elixir'

}
end)
