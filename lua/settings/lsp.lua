local icons = require('theme.icons')

vim.diagnostic.config({
  signs = true,
  severity_sort = true,
  virtual_text = false,
})

local signs = {
  Error = icons.error,
  Warn = icons.warn,
  Hint = icons.hint,
  Info = icons.info,
}

for type, icon in pairs(signs) do
  local hl = 'DiagnosticSign' .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = '' })
end
