local cmp = require('cmp')

local config = {
  mapping = require('plugin.cmp.keymap'),
}

config.snippet = {
  expand = function(args)
    require('luasnip').lsp_expand(args.body)
  end,
}

config.sources = cmp.config.sources({
  { name = 'path' },
  { name = 'nvim_lsp', keyword_length = 3 },
  { name = 'nvim_lsp_signature_help' },
  { name = 'nvim_lua', keyword_length = 2 },
  { name = 'buffer', keyword_length = 2 },
  { name = 'luasnip', keyword_length = 2 },
}, { name = 'buffer' })

config.formatting = {
  fields = { 'menu', 'abbr', 'kind' },
  format = function(entry, item)
    local menu_icon = {
      nvim_lsp = 'λ',
      luasnip = '⋗',
      buffer = 'Ω',
      path = '🖫',
    }
    item.menu = menu_icon[entry.source.name]
    return item
  end,
}

config.window = {
  completion = cmp.config.window.bordered(),
  documentation = cmp.config.window.bordered(),
}

cmp.setup(config)
