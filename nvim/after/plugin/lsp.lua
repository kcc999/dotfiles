local lsp = require('lsp-zero')
lsp.preset('recommended')
lsp.on_attach(function(client, bufnr)
  -- Create a keymap for jump to definition
  vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', {buffer = bufnr})
  
  -- Optionally, you can also map other related functions:
  vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', {buffer = bufnr})
  vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', {buffer = bufnr})
end)

lsp.configure('rust_analyzer', {
  cmd = { 'rust-analyzer' },  -- This works if rust-analyzer is available in the PATH
})

lsp.setup()
