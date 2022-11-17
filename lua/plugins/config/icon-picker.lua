require('icon-picker').setup({
  disable_legacy_commands = true,
})

local map = vim.keymap.set
map('n', '<Leader>fu', '<Cmd>IconPickerNormal<CR>', { desc = 'Insert icon/emoji/nerdfont' })
map('n', '<Leader>fU', '<Cmd>IconPickerYank<CR>', { desc = 'Yank icon/emoji/nerdfont' })
map('i', '<M-u>', '<Cmd>IconPickerInsert<CR>', { desc = 'Insert icon/emoji/nerdfont' })
