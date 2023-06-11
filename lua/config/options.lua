local opt = vim.opt

opt.breakindent = true -- line wraps have the same level of indentation
opt.colorcolumn = '+1'
opt.complete:remove({ 't' })
opt.completeopt:append({
  'menuone',
  'noinsert',
  'noselect',
})
opt.conceallevel = 2 -- hide concealed text unless it has a custom replacement
opt.confirm = true -- raise dialogue asking to save changed filed
opt.cursorline = true -- highlight current line
opt.expandtab = true -- use space by default
opt.fillchars:append({
  horiz = '━',
  horizup = '┻',
  horizdown = '┳',
  vert = '┃',
  vertleft = '┨',
  vertright = '┣',
  verthoriz = '╋',
})
opt.hidden = true -- enable switching unsaved buffer
opt.hlsearch = false -- don't highlight search results
opt.ignorecase = true -- use case-insensitive search
opt.laststatus = 3 -- global statusline
opt.list = true -- show eol trailing spaces
opt.matchpairs:append({ '<:>' }) -- include < > in pair matching
opt.mouse = '' -- disable mouse mode entirely
opt.nrformats:append({ 'alpha' }) -- increment <C-a> and decrement <C-x> alphabet
opt.number = true -- show number line
opt.path:remove({ '/usr/include' })
opt.path:append({ '**' }) -- search in current directory recursively
opt.pumblend = 5 -- pseduo-transparency for popup-menu (0 - 100)
opt.pumheight = 10 -- maximum number of lines in popup-menu
opt.relativenumber = true -- show line number relative to current line
opt.scrolloff = 9 -- minimum number of lines to keep around the cursor
opt.shiftround = true -- round indent to multiples of 'shiftwidth'
opt.shiftwidth = 2 -- number of spaces to use for each (auto)indent step
opt.shortmess:append({ c = true })
opt.showmode = false -- hide partial command in last line
opt.sidescrolloff = 9 -- minimum number of columns to keep around the cursor
opt.signcolumn = 'yes:2' -- always display sign column with 2 spaces
opt.smartcase = true -- case sensitive search when search term contains an uppercase letter
opt.softtabstop = 2 -- number of spaces <Tab> counts for
opt.splitbelow = true -- :split puts new window below current
opt.splitright = true -- :vsplit puts new window to the right
opt.tabstop = 2 -- see 'softtabstop'
opt.termguicolors = true -- enable 24-bit RGB color
opt.textwidth = 120
opt.undofile = true -- save undo history to file
opt.undolevels = 150 -- max number of changes that can be undone
opt.updatetime = 300 -- write swapfile after this delay (ms)
opt.wildignore = {
  -- ignore these file patterns when expanding wildcards
  '**/node_modules/**',
  '**/tmp/**',
  '*.a',
  '*.jpeg',
  '*.jpg',
  '*.o',
  '*.pdf',
  '*.png',
  '*.so',
  '*pycache*',
  '.git',
  '__pycache__',
}
opt.wildmenu = true
opt.wildmode = { 'longest:list', 'full' }
