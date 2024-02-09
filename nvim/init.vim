call plug#begin('~/.local/share/nvim/site/plugged')
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'norcalli/snippets.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }
Plug 'nvim-tree/nvim-web-devicons' " optional, for file icons
Plug 'tjdevries/ocaml.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'jacoborus/tender.vim'

Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lualine/lualine.nvim'
Plug 'morhetz/gruvbox'
Plug 'rust-lang/rust.vim'
call plug#end()
nnoremap fg <cmd>Telescope find_files<cr>
nnoremap hg <cmd>Telescope live_grep<cr>

set number

imap <M-Esc> [
imap <M-C-]> ]

set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
colorscheme tender
lua << EOF
	require'lspconfig'.pyright.setup{}
	require'lspconfig'.sourcekit.setup{}
	require 'lspconfig'.rust_analyzer.setup{}
	require 'lspconfig'.hls.setup{}
  require('lualine').setup()
EOF
