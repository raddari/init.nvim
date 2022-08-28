local telescope = require('telescope')
local builtin = require('telescope.builtin')
local ext = telescope.extensions

local set = vim.keymap.set

set('n', '<Leader>ff', builtin.git_files)
set('n', '<Leader>fa', builtin.find_files)
set('n', '<Leader>fg', builtin.live_grep)
set('n', '<Leader>fb', builtin.buffers)
set('n', '<Leader>fh', builtin.help_tags)
set('n', '<Leader>t', ext.file_browser.file_browser)
