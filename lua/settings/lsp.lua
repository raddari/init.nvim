vim.diagnostic.config({
  signs = true,
  severity_sort = true,
  virtual_text = false,
})

local box = '◾'
local signs = {
  Error = box,
  Warn = box,
  Hint = box,
  Info = box,
}

for type, icon in pairs(signs) do
  local hl = 'DiagnosticSign' .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = '' })
end
