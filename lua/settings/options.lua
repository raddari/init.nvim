local opt = vim.opt

opt.completeopt = { 'menuone', 'noinsert', 'noselect' }
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
opt.number = true
opt.relativenumber = true
opt.scrolloff = 4
opt.shiftround = true
opt.shiftwidth = 2
opt.sidescrolloff = 8
opt.signcolumn = 'yes:1'
opt.smartcase = true
opt.smartindent = true
opt.splitbelow = true
opt.splitright = true
opt.swapfile = true
opt.tabstop = 2
opt.termguicolors = true
opt.wildmode = { 'list', 'longest' }
