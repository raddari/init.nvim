require('project_nvim').setup({
  -- FIXME: https://github.com/mong8se/actually.nvim/issues/1
  detection_methods = { 'lsp' },
})

require('telescope').load_extension('projects')
vim.keymap.set('n', '<Leader>fp', '<Cmd>Telescope projects<CR>', { desc = 'List recently opened projects' })
