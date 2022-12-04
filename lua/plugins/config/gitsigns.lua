require('gitsigns').setup({
  current_line_blame_opts = {
    virt_text_pos = 'right_align', -- 'eol' | 'overlay' | 'right_align'
  },
  preview_config = {
    -- Options passed to nvim_open_win
    border = 'none',
    style = 'minimal',
  },
})

local map = vim.keymap.set
map('n', '<Leader>vb', '<Cmd>Gitsigns toggle_current_line_blame<CR>', { desc = 'Toggle line blame' })
map('n', '<Leader>vd', '<Cmd>Gitsigns toggle_word_diff<CR>', { desc = 'Toggle word diff' })
