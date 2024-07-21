local autocmd = vim.api.nvim_create_autocmd

autocmd({ 'TextYankPost' }, {
  desc = 'Highlight on yank',
  callback = function()
    vim.highlight.on_yank({ higroup = 'Visual', timeout = 750 })
  end,
})

autocmd({ 'FileType' }, {
  pattern = { 'nasm' },
  callback = function()
    local o = vim.opt_local
    o.sw = 4
    o.sts = 4
    o.ts = 8
    o.et = false
  end,
})
