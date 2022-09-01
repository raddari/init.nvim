local builtin = require('telescope.builtin')
local ext = require('telescope').extensions

local map = vim.keymap.set

map('n', '<Leader>ff', builtin.git_files)
map('n', '<Leader>fa', builtin.find_files)
map('n', '<Leader>fg', builtin.live_grep)
map('n', '<Leader>fb', builtin.buffers)
map('n', '<Leader>fh', builtin.help_tags)
map('n', '<Leader>fk', builtin.keymaps)
map('n', '<Leader>fr', builtin.registers)
map('n', '<Leader>fu', function()
  builtin.symbols({ sources = { 'emoji', 'math' } })
end)

map('n', '<Leader>t', ext.file_browser.file_browser)
map('n', '<Leader>fp', ext.packer.packer)
map('n', '<Leader>fs', ext.luasnip.luasnip)
map('n', '<Leader>fe', ext.env.env)
