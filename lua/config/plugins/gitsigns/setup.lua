require('gitsigns').setup({
  current_line_blame = true,
  current_line_blame_opts = {
    virt_text_pos = 'right_align',
    delay = 500,
  },
  preview_config = { border = 'none' },
})
