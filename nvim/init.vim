call plug#begin('~/.local/share/nvim/site/plugged')
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'norcalli/snippets.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
Plug 'nvim-tree/nvim-web-devicons' " optional, for file icons
Plug 'nvim-tree/nvim-tree.lua'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lualine/lualine.nvim'
Plug 'morhetz/gruvbox'
Plug 'rust-lang/rust.vim'

call plug#end()

nnoremap fg <cmd>Telescope find_files<cr>
set number

let g:neovide_scale_factor = 0.8
colorscheme gruvbox


imap <M-Esc> [
imap <M-C-]> ]

let g:neovide_input_macos_alt_is_meta=v:true
set tabstop=4
set shiftwidth=4
set expandtab


if exists('g:neovide')
    " Workaround SDL2 AltGr keys not properly read :
    " See https://github.com/Kethku/neovide/issues/151#issuecomment-682123519
    imap <M-~> ~
    imap <M-#> #
    imap <M-{> {
    imap <M-[> [
    imap <M-Bar> \|
    imap <M-`> `
    imap <M-\> \
    imap <M-^> ^
    imap <M-@>
    imap <M-¤> ¤
    imap <M-}> }
    imap <M-]> ]
endif

lua << EOF
	require'lspconfig'.pyright.setup{}
	require'lspconfig'.sourcekit.setup{}
	require 'lspconfig'.rust_analyzer.setup{}
EOF
