local builtin = require('telescope.builtin')
local ext = require('telescope').extensions

local map = vim.keymap.set

map('n', '<Leader>ff', builtin.git_files, { desc = 'Search for files in workspace versioned by git' })
map('n', '<Leader>fa', builtin.find_files, { desc = 'Search for files in workspace' })
map('n', '<Leader>fg', builtin.live_grep, { desc = 'Search for strings in workspace files' })
map('n', '<Leader>fb', builtin.buffers, { desc = 'Open buffer picker' })
map('n', '<Leader>fh', builtin.help_tags, { desc = 'Search for help pages' })
map('n', '<Leader>fk', builtin.keymaps, { desc = 'Search for keymaps' })
map('n', '<Leader>fr', builtin.registers, { desc = 'Show register contents' })

local symbols = function()
  builtin.symbols({ sources = { 'emoji', 'math' } })
end
map('n', '<Leader>fu', symbols, { desc = 'Open emoji/math symbol picker' })
map('i', '<M-u>', symbols, { desc = 'Open emoji/math symbol picker' })

map('n', '<Leader>t', ext.file_browser.file_browser, { desc = 'Open file browser from current working directory' })
map('n', '<Leader>fp', ext.packer.packer, { desc = 'Open packer plugin picker' })
map('n', '<Leader>fs', ext.luasnip.luasnip, { desc = 'Open LuaSnip picker' })
map('n', '<Leader>fe', ext.env.env, { desc = 'Open environment variables picker' })
map('n', '<Leader>fn', ext.notify.notify, { desc = 'Open notification history' })
