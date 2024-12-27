local M = {}

M.setup = function()
  vim.g.nightflyItalics = false
  vim.api.nvim_create_autocmd('ColorScheme', {
    pattern = 'nightfly',
    callback = function()
      local hl = vim.api.nvim_set_hl
      hl(0, '@function.builtin', { link = 'NightflyOrange' })
      -- hl(0, '@lsp.type.comment', {})
      -- hl(0, '@lsp.type.string', {})
      hl(0, '@lsp.type.parameter', { link = '@variable.parameter' })
      hl(0, '@lsp.type.namespace', { link = '@module' })
      -- hl(0, '@lsp.type.keywordLiteral', { link = '@constant.builtin' })
    end,
  })

  require('nordic').setup({
    on_highlight = function(hl, palette)
      for _, highlight in pairs(hl) do
        highlight.italic = false
      end
      hl['@type.builtin'] = { link = '@type' }
      hl['@lsp.type.comment'] = { link = '@lsp' }
      hl['@lsp.type.string'] = { link = '@lsp' }
      hl['@lsp.typemod.variable.globalScope'] = { link = '@lsp' }
      hl['@lsp.typemod.function.defaultLibrary'] = { link = '@lsp' }
      hl['@lsp.typemod.class.defaultLibrary'] = { link = '@lsp' }
      hl['@function.builtin'] = { fg = palette.red.base }
      hl['@punctuation.bracket'] = { fg = palette.white0_normal }
      hl['@operator'] = { fg = palette.blue1 }
      hl['Namespace'] = { fg = palette.yellow.base }
      hl['Type'] = { fg = palette.yellow.dim }
      hl['Comment'] = { fg = palette.gray5 }
      hl['Field'] = { fg = palette.cyan.bright }
    end,
  })

  require('nightfox').setup({
    groups = {
      all = {
        ['@type.builtin'] = { link = '@type' },
        ['@lsp.type.comment'] = { link = '@lsp' },
        ['@lsp.type.string'] = { link = '@lsp' },
        ['@lsp.type.keywordLiteral'] = { link = '@constant.builtin' },
        ['@lsp.typemod.function.defaultLibrary'] = { link = '@lsp' },
        ['@lsp.typemod.class.defaultLibrary'] = { link = '@lsp' },
      },
    },
  })
end

return M
