local M = {}

M.config = function()
  require('nvim-tundra').setup({
    transparent_background = false,
    editor = {
      search = {},
      substitute = {},
    },
    syntax = {
      booleans = { bold = true, italic = false },
      comments = { bold = true, italic = false },
      conditionals = {},
      constants = { bold = true },
      functions = {},
      keywords = {},
      loops = {},
      numbers = { bold = true },
      operators = { bold = true },
      punctuation = {},
      strings = {},
      types = { italic = false },
    },
    diagnostics = {
      errors = {},
      warnings = {},
      information = {},
      hints = {},
    },
    plugins = {
      lsp = true,
      treesitter = true,
      cmp = true,
      context = true,
      dbui = false,
      gitsigns = true,
      telescope = true,
    },
    overwrite = {
      colors = {},
      highlights = {},
    },
  })
end

return M
