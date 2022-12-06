require('dressing').setup({
  input = {
    default_prompt = '➤ ',
    border = 'single',
    mappings = {
      i = {
        ['<C-c>'] = 'Close',
        ['<CR>'] = 'Confirm',
        ['<C-p>'] = 'HistoryPrev',
        ['<C-n>'] = 'HistoryNext',
      },
    },
  },
})
