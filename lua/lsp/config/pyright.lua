return {
  on_attach = function(client, bufnr)
    require('lsp.config.default').on_attach(client, bufnr)
    vim.keymap.set('n', '<Leader>ri', '<Cmd>PyrightOrganizeImports<CR>', { buffer = bufnr })
  end,
}
