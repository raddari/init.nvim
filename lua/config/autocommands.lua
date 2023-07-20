local autocmd = vim.api.nvim_create_autocmd

autocmd({ 'TextYankPost' }, {
  desc = 'Highlight on yank',
  callback = function()
    vim.highlight.on_yank({ higroup = 'Visual', timeout = 750 })
  end,
})

autocmd({ 'FileType' }, {
  pattern = { 'c', 'cpp' },
  desc = 'Try to find a Make or Ninja file for C/C++ projects',
  callback = function(_)
    local root_dir = require('util').root_dir()
    local file = vim.fs.find(function(name, _)
      return name:match('^build%.ninja$') or name:match('^[Mm]akefile$')
    end, { path = root_dir, type = 'file', limit = 1 })[1]
    if file then
      local dir = vim.fs.dirname(file)
      local cmd = vim.fs.basename(file) == 'build.ninja' and 'ninja' or 'make'
      vim.opt_local.makeprg = ([[%s -C "%s" $*]]):format(cmd, dir)
    end
  end,
})

autocmd({ 'FileType' }, {
  pattern = { 'cpp' },
  callback = function(_)
    vim.opt.commentstring = '// %s'
  end,
})

autocmd({ 'ColorScheme' }, {
  pattern = { '*' },
  callback = function(_)
    local overrides = {
      ['@lsp.type.property.cpp'] = { link = '@property.cpp' },
      ['@storageclass'] = { link = '@keyword' },
      ['@type.qualifier'] = { link = '@keyword' },
    }
    for hl, override in pairs(overrides) do
      vim.api.nvim_set_hl(0, hl, override)
    end
  end,
})
