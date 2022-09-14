local M = {}

M.keymaps = function(client, bufnr)
  local lsp = vim.lsp.buf
  local diagnostic = vim.diagnostic

  local map = function(mode, lhs, rhs, desc)
    vim.keymap.set(mode, lhs, rhs, { desc = desc, buffer = bufnr })
  end

  map('n', 'gd', lsp.definition, 'Goto definition')
  map('n', 'gD', lsp.declaration, 'Goto declaration')
  map('n', 'gi', lsp.implementation, 'Goto implementation')
  map('n', 'gt', lsp.type_definition, 'Goto typedef')
  map('n', 'gr', require('telescope.builtin').lsp_references, 'Find references')
  map('n', 'gn', lsp.rename, 'Rename symbol')
  map('n', 'ga', lsp.code_action, 'Open code actions')
  map('n', 'gx', diagnostic.open_float, 'Open diagnostics for line')
  map('n', '[g', diagnostic.goto_prev, 'Goto next diagnostic')
  map('n', ']g', diagnostic.goto_next, 'Goto previous diagnostic')
  map('n', 'K', lsp.hover, 'Show hover information')
  map('n', '<C-k>', lsp.signature_help, 'Show signature help')
  map('n', '<Leader>wx', require('telescope.builtin').diagnostics, 'Open workspace diagnostics')
  map('n', '<Leader>wa', lsp.add_workspace_folder, 'Add workspace folder')
  map('n', '<Leader>wd', lsp.remove_workspace_folder, 'Remove workspace folder')
  map('n', '<Leader>wl', lsp.list_workspace_folders, 'List workspace folders')
  map('n', '<Leader>F', function()
    if client.server_capabilities.documentFormattingProvider then
      lsp.format({ bufnr = bufnr })
    end
  end, 'Format document')
end

M.document_highlights = function(client, bufnr)
  if not client.server_capabilities.documentHighlightProvider then
    return
  end

  local group = vim.api.nvim_create_augroup('LspDocumentHighlight', { clear = false })
  vim.api.nvim_clear_autocmds({ group = group, buffer = bufnr })

  vim.api.nvim_create_autocmd({ 'CursorHold' }, {
    group = group,
    buffer = bufnr,
    callback = function()
      vim.lsp.buf.clear_references()
      vim.lsp.buf.document_highlight()
    end,
  })

  vim.api.nvim_create_autocmd({ 'InsertEnter' }, {
    group = group,
    buffer = bufnr,
    callback = function()
      vim.lsp.buf.clear_references()
    end,
  })
end

M.codelens = function(client, bufnr)
  if not client.server_capabilities.codeLensProvider then
    return
  end

  local group = vim.api.nvim_create_augroup('LspCodeLens', { clear = false })
  vim.api.nvim_clear_autocmds({ group = group, buffer = bufnr })

  vim.api.nvim_create_autocmd({ 'BufEnter' }, {
    group = group,
    buffer = bufnr,
    once = true,
    callback = vim.lsp.codelens.refresh,
  })

  vim.api.nvim_create_autocmd({ 'BufWritePost', 'CursorHold', 'InsertLeave' }, {
    group = group,
    buffer = bufnr,
    callback = vim.lsp.codelens.refresh,
  })
end

M.format_on_save = function(client, bufnr)
  if not client.server_capabilities.documentFormattingProvider or not vim.b[bufnr].format_on_save then
    return
  end

  local group = vim.api.nvim_create_augroup('LspFormatting', { clear = false })
  vim.api.nvim_clear_autocmds({ group = group, buffer = bufnr })

  vim.api.nvim_create_autocmd({ 'BufWritePre' }, {
    group = group,
    buffer = bufnr,
    callback = function()
      vim.lsp.buf.format({ buffer = bufnr })
    end,
  })
end

return M
