local map = vim.keymap.set
-- splits
map('n', '<Leader>\\', '<Cmd>vsplit<CR>', { desc = 'Vertical split' })
map('n', '<Leader>-', '<Cmd>split<CR>', { desc = 'Horizontal split' })
-- util
map('n', '<Leader>lo', '<Cmd>source %<CR>', { desc = 'Source current file' })
map('n', '<Leader>bd', '<Cmd>bd<CR>', { desc = 'Remove current buffer' })
map('n', '<Leader>m', '<Cmd>silent make!<CR><Cmd>cope<CR>', { desc = 'Build and open compiler output' })
map('n', '<Leader>M', '<Cmd>make!<CR>', { desc = 'Build' })
