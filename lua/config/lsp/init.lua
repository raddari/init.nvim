vim.diagnostic.config({
  severity_sort = true,
  virtual_text = false,
  signs = function()
    local box = '●'
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

vim.lsp.config('*', {
  root_markers = { '.git' },
})

vim.lsp.enable('asm_lsp')
vim.lsp.enable('clangd')
vim.lsp.enable('jsonls')
vim.lsp.enable('lua_ls')
vim.lsp.enable('neocmake')
vim.lsp.enable('zls')
