require('dressing').setup({
  input = {
    default_prompt = 'Input:',
    border = 'single',
    winblend = 8,
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
