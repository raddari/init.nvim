local autocmd = vim.api.nvim_create_autocmd

autocmd({ 'TextYankPost' }, {
  desc = 'Highlight on yank',
  callback = function()
    vim.highlight.on_yank({ higroup = 'Visual', timeout = 750 })
  end,
})
