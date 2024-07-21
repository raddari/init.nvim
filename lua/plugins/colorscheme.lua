local M = {}

M.setup = function()
  vim.g.nightflyItalics = false
  vim.api.nvim_create_autocmd('ColorScheme', {
    pattern = 'nightfly',
    callback = function()
      vim.api.nvim_set_hl(0, '@function.builtin', { link = 'NightflyOrange' })
    end,
  })
end

return M
