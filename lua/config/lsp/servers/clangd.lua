local config = {
  cmd = {
    'clangd',
    '--completion-style=bundled',
    '--header-insertion=never',
    '--offset-encoding=utf-16',
  },
  init_options = {
    clangdFileStatus = true,
    usePlaceholders = true,
    completeUnimported = true,
    semanticHighlighting = true,
  },
  on_attach = function(client, bufnr)
    require('config.lsp.default').on_attach(client, bufnr)
    vim.keymap.set(
      'n',
      '<Leader>gs',
      '<Cmd>ClangdSwitchSourceHeader<CR>',
      { desc = 'Switch between source/header', buffer = bufnr }
    )
  end,
}

return config
