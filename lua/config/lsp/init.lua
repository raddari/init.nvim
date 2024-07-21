vim.diagnostic.config({
  severity_sort = true,
  virtual_text = false,
  signs = function()
    local box = '⏹'
    local signs = { text = {} }
    for _, diagnostic in ipairs({
      vim.diagnostic.severity.ERROR,
      vim.diagnostic.severity.WARN,
      vim.diagnostic.severity.HINT,
      vim.diagnostic.severity.INFO,
    }) do
      signs.text[diagnostic] = box
    end
    return signs
  end,
})
