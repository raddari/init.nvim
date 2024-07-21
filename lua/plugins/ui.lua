local M = {}

M.setup = function()
  require('tint').setup({
    tint = -10,
    saturation = 0.4,
    window_ignore_function = function(winid)
      local bufid = vim.api.nvim_win_get_buf(winid)
      local buftype = vim.api.nvim_buf_get_option(bufid, 'buftype')
      local floating = vim.api.nvim_win_get_config(winid).relative ~= ''

      -- Do not tint `terminal` or floating windows, tint everything else
      return buftype == 'terminal' or floating
    end,
  })
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
end

return M
