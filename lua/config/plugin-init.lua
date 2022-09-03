local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/opt/packer.nvim'

local first_install = (function()
  if fn.empty(fn.glob(install_path)) > 0 then
    return fn.system({
      'git',
      'clone',
      '--depth',
      '1',
      'https://github.com/wbthomason/packer.nvim',
      install_path,
    })
  end
end)()

vim.cmd('packadd packer.nvim')

local packer = require('packer')
local setup = require('config.plugins.packer')
packer.init(setup.init)
packer.startup(setup.use(require('config.plugin-list')))

if first_install then
  require('packer').sync()
end
