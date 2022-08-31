local g = vim.g
local opt = vim.opt

g.mapleader = ','

opt.breakindent = true
opt.completeopt:append({
  'menuone',
  'noinsert',
  'noselect',
})
opt.confirm = true
opt.cursorline = true
opt.expandtab = true
opt.fillchars:append({
  horiz = '━',
  horizup = '┻',
  horizdown = '┳',
  vert = '┃',
  vertleft = '┨',
  vertright = '┣',
  verthoriz = '╋',
})
opt.hidden = true
opt.ignorecase = true
opt.joinspaces = true
opt.laststatus = 3
opt.list = true
opt.mouse = ''
opt.number = true
opt.relativenumber = true
opt.scrolloff = 9
opt.shiftround = true
opt.shiftwidth = 2
opt.sidescrolloff = 9
opt.signcolumn = 'yes:2'
opt.smartcase = true
opt.splitbelow = true
opt.splitright = true
opt.swapfile = true
opt.tabstop = 2
opt.termguicolors = true
opt.updatetime = 500
opt.wildmode = { 'longest:list', 'full' }
