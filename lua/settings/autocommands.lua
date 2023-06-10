---@class AuUtil
local U = {}
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
    local root_dir = U.root_dir()
    local file = vim.fs.find(function(name, _)
      return name:match('^build%.ninja$') or name:match('^[Mm]akefile$')
    end, { path = root_dir, type = 'file', limit = 1 })[1]
    if file then
      local dir = vim.fs.dirname(file)
      local cmd = file == 'build.ninja' and 'ninja' or 'make'
      vim.opt_local.makeprg = ([[%s -C "%s" $*]]):format(cmd, dir)
    end
  end,
})

U.root_dir = function()
  return vim.lsp.buf.list_workspace_folders()[1] or vim.fn.getcwd()
end
