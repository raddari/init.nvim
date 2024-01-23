vim.lsp.set_log_level('info')

vim.diagnostic.config({
  signs = true,
  severity_sort = true,
  virtual_text = false,
})

local box = '⏹'
local signs = {
  Error = box,
  Warn = box,
  Hint = box,
  Info = box,
}

for name, icon in pairs(signs) do
  local hl = 'DiagnosticSign' .. name
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = '' })
end
