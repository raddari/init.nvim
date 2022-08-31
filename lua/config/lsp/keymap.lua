local M = {}

M.init = function(_, bufnr)
  local set = function(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, { buffer = bufnr })
  end

  local lsp = vim.lsp
  local telescope = require('telescope.builtin')
  set('n', 'gd', telescope.lsp_definitions)
  set('n', 'gD', lsp.buf.declaration)
  set('n', 'gi', telescope.lsp_implementations)
  set('n', 'gt', telescope.lsp_type_definitions)
  set('n', 'gr', telescope.lsp_references)
  set('n', 'gn', lsp.buf.rename)

  local diag = vim.diagnostic
  set('n', '[g', diag.goto_prev)
  set('n', ']g', diag.goto_next)
  set('n', 'ge', diag.open_float)
  set('n', '<Leader>ge', function() telescope.diagnostics({ bufnr = 0 }) end)

  set('n', 'K', lsp.buf.hover)
  set('n', '<Leader>ca', lsp.buf.code_action)
  set('v', '<Leader>ca', lsp.buf.range_code_action)
  set('n', '<Leader>gf', function() lsp.buf.format({ buffer = bufnr }) end)
  set('n', '<C-k>', lsp.buf.signature_help)

  set('n', '<Leader>we', telescope.diagnostics)
  set('n', '<Leader>wa', lsp.buf.add_workspace_folder)
  set('n', '<Leader>wd', lsp.buf.remove_workspace_folder)
  set('n', '<Leader>wl', function() vim.notify(vim.inspect(lsp.buf.list_workspace_folders())) end)
end

return M
