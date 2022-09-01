local M = {}

M.init = function(_, bufnr)
  local map = function(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, { buffer = bufnr })
  end

  local lsp = vim.lsp
  local telescope = require('telescope.builtin')
  map('n', 'gd', telescope.lsp_definitions)
  map('n', 'gD', lsp.buf.declaration)
  map('n', 'gi', telescope.lsp_implementations)
  map('n', 'gt', telescope.lsp_type_definitions)
  map('n', 'gr', telescope.lsp_references)
  map('n', '<Leader>gn', lsp.buf.rename)

  local diag = vim.diagnostic
  map('n', '[g', diag.goto_prev)
  map('n', ']g', diag.goto_next)
  map('n', 'ge', diag.open_float)
  map('n', '<Leader>ge', function()
    telescope.diagnostics({ bufnr = 0 })
  end)

  map('n', 'K', lsp.buf.hover)
  map('n', '<Leader>ca', lsp.buf.code_action)
  map('v', '<Leader>ca', lsp.buf.range_code_action)
  map('n', '<Leader>gf', function()
    lsp.buf.format({ buffer = bufnr })
  end)
  map('n', '<C-k>', lsp.buf.signature_help)

  map('n', '<Leader>we', telescope.diagnostics)
  map('n', '<Leader>wa', lsp.buf.add_workspace_folder)
  map('n', '<Leader>wd', lsp.buf.remove_workspace_folder)
  map('n', '<Leader>wl', function()
    vim.notify(vim.inspect(lsp.buf.list_workspace_folders()))
  end)
end

return M
