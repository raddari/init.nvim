require('dressing').setup({
  input = {
    default_prompt = '➤ ',
    winhighlight = 'Normal:Normal,NormalNC:Normal',
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
  select = {
    backend = { 'telescope', 'builtin' },
    builtin = { winhighlight = 'Normal:Normal,NormalNC:Normal' },
  },
})
