local icons = require('theme.icons')

require('lsp_signature').setup({
  bind = true,
  fix_pos = false, -- change to true if the disappearing act annoys me
  handler_opts = {
    border = icons.border,
  },
  hint_enable = false,
  toggle_key = '<C-k>',
})
