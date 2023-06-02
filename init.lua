local lazypath = ('%s/lazy/lazy.nvim'):format(vim.fn.stdpath('data'))
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable',
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = ' '

require('lazy').setup('plugins')
require('settings')

local theme = require('last-color').recall() or 'minischeme'
vim.cmd.colorscheme(theme)
