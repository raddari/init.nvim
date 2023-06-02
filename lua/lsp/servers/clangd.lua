local config = {}

config.server = {
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
    require('lsp.default').on_attach(client, bufnr)
    vim.keymap.set(
      'n',
      '<Leader>gs',
      '<Cmd>ClangdSwitchSourceHeader<CR>',
      { desc = 'Switch between source/header', buffer = bufnr }
    )
  end,
}

config.extensions = {
  inlay_hints = {
    only_current_line = true,
    parameter_hints_prefix = ' ',
    other_hints_prefix = ' ',
  },
}

return config
