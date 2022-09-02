local M = {}

M.init = function(_, bufnr)
  local map = function(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, { buffer = bufnr })
  end

  local lsp = vim.lsp
  map('n', '<Leader>gd', lsp.buf.definition)
  map('n', '<Leader>gD', lsp.buf.declaration)
  map('n', '<Leader>gi', lsp.buf.implementation)
  map('n', '<Leader>gt', lsp.buf.type_definition)
  map('n', '<Leader>gr', lsp.buf.references)
  map('n', '<Leader>gn', lsp.buf.rename)

  local diag = vim.diagnostic
  map('n', '[g', diag.goto_prev)
  map('n', ']g', diag.goto_next)
  map('n', '<Leader>ge', diag.open_float)

  map('n', 'K', lsp.buf.hover)
  map('n', '<Leader>ca', lsp.buf.code_action)
  map('v', '<Leader>ca', lsp.buf.range_code_action)
  map('n', '<Leader>gf', function()
    lsp.buf.format({ buffer = bufnr })
  end)
  map('n', '<C-k>', lsp.buf.signature_help)

  local telescope = require('telescope.builtin')
  map('n', '<Leader>we', telescope.diagnostics)
  map('n', '<Leader>wa', lsp.buf.add_workspace_folder)
  map('n', '<Leader>wd', lsp.buf.remove_workspace_folder)
  map('n', '<Leader>wl', lsp.buf.workspace_symbol)
end

return M
