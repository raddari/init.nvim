local g = vim.g
local opt = vim.opt

g.mapleader = ','

opt.breakindent = true
opt.completeopt:append({
  'menuone',
  'noinsert',
  'noselect',
})
opt.conceallevel = 2
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
opt.hlsearch = false
opt.ignorecase = true
opt.joinspaces = true
opt.laststatus = 3
opt.list = true
opt.matchpairs:append({ '<:>' })
opt.mouse = ''
opt.nrformats:append({ 'alpha' })
opt.number = true
opt.path:remove({ '/usr/include' })
opt.path:append({ '**' })
opt.pumblend = 10
opt.pumheight = 10
opt.relativenumber = true
opt.scrolloff = 9
opt.shiftround = true
opt.shiftwidth = 2
opt.showmode = false
opt.sidescrolloff = 9
opt.signcolumn = 'yes:2'
opt.smartcase = true
opt.softtabstop = 2
opt.splitbelow = true
opt.splitright = true
opt.swapfile = true
opt.tabstop = 2
opt.termguicolors = true
opt.undofile = true
opt.undolevels = 150
opt.updatetime = 400
opt.wildignore:append({ '*/.git/*' })
opt.wildmenu = true
opt.wildmode = { 'longest:list', 'full' }
