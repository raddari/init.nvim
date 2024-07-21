local package_path = vim.fn.stdpath('data') .. '/site/'
local mini_path = package_path .. 'pack/deps/start/mini.nvim'
if not vim.uv.fs_stat(mini_path) then
  vim.cmd([[echo "Installing `mini.nvim`" | redraw]])
  local clone_cmd = {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/echasnovski/mini.nvim',
    mini_path,
  }
  vim.fn.system(clone_cmd)
  vim.cmd([[packadd mini.nvim | helptags ALL]])
  vim.cmd([[echo "Installed `mini.nvim`" | redraw]])
end

vim.g.mapleader = ' '

require('mini.deps').setup({ path = { package = package_path } })
require('plugins')
require('config')

local theme = require('last-color').recall() or 'minischeme'
vim.cmd.colorscheme(theme)
