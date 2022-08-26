local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/opt/packer.nvim'

local packer_bootstrap = (function()
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

local plugins = {
  require('plugin.clangd_extensions'),
  require('plugin.cmp'),
  require('plugin.dap'),
  require('plugin.floaterm'),
  require('plugin.focus'),
  require('plugin.gitsigns'),
  require('plugin.illuminate'),
  require('plugin.limelight'),
  require('plugin.lspconfig'),
  require('plugin.lualine'),
  require('plugin.luasnip'),
  require('plugin.mason'),
  require('plugin.null-ls'),
  require('plugin.rust-tools'),
  require('plugin.telescope'),
  require('plugin.themes'),
  require('plugin.treesitter'),
  { 'rafamadriz/friendly-snippets' },
}

local packer = require('packer')
local config = require('plugin.packer.config')
packer.init(config.init)
packer.startup(config.use(plugins))

if packer_bootstrap then
  require('packer').sync()
end
