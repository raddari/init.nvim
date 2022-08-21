local M = {}

M.on_attach = function(_, bufnr)
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  local bkeymap = function(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, { buffer = bufnr })
  end

  bkeymap('n', 'gD', vim.lsp.buf.declaration)
  bkeymap('n', 'gd', vim.lsp.buf.definition)
  bkeymap('n', 'gi', vim.lsp.buf.implementation)
  bkeymap('n', 'gr', vim.lsp.buf.references)
  bkeymap('n', 'K', vim.lsp.buf.hover)
  bkeymap('n', '<C-k>', vim.lsp.buf.signature_help)
  bkeymap('n', '<Leader>wa', vim.lsp.buf.add_workspace_folder)
  bkeymap('n', '<Leader>wd', vim.lsp.buf.remove_workspace_folder)
  bkeymap('n', '<Leader>wl', function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end)
  bkeymap('n', '<Leader>D', vim.lsp.buf.type_definition)
  bkeymap('n', '<Leader>rn', vim.lsp.buf.rename)
  bkeymap('n', '<Leader>ca', vim.lsp.buf.code_action)
  -- TODO(raddari): autocommand when leaving insert mode
  bkeymap('n', '<Leader>=', vim.lsp.buf.formatting)
end

return M
