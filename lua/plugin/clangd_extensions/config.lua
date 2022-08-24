local clangd = require('lsp.config.clangd')

require('clangd_extensions').setup({
  server = clangd,
  extensions = {
    inlay_hints = {
      only_current_line = true,
      only_current_line_autocmd = 'CursorMoved,CursorMovedI',
    },
    memory_usage = {
      border = 'single',
    },
    symbol_info = {
      border = 'single',
    },
  },
})
