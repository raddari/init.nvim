local M = {}

local format = function(client, bufnr)
  if not client.server_capabilities.documentFormattingProvider then
    return
  end
  vim.lsp.buf.format({
    async = false,
    buffer = bufnr,
    name = vim.b[bufnr].format_provider,
  })
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
  local group = vim.api.nvim_create_augroup('LspFormatting', { clear = false })
  vim.api.nvim_clear_autocmds({ group = group, buffer = bufnr })

  vim.api.nvim_create_autocmd({ 'BufWritePre' }, {
    group = group,
    buffer = bufnr,
    callback = function()
      if vim.b[bufnr].disable_format_on_save then
        return true
      end

      format(client, bufnr)
    end,
  })
end

return M
