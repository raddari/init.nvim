local cmp = require('cmp')
local luasnip = require('luasnip')
local icons = require('theme.icons')

cmp.setup({
  completion = {
    autocomplete = false,
  },
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-u>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping(function(_)
      if cmp.visible() then
        cmp.abort()
      else
        cmp.complete()
      end
    end, { 'i', 'c' }),
    ['<C-e>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Insert,
      select = false,
    }),
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { 'i', 's' }),
  }),
  window = {
    documentation = cmp.config.window.bordered({
      border = 'none',
      winhighlight = 'Normal:Background',
    }),
    completion = cmp.config.window.bordered({
      border = 'none',
      -- TODO: create highlight groups
      -- https://github.com/hrsh7th/nvim-cmp/wiki/Menu-Appearance#how-to-get-types-on-the-left-and-offset-the-menu
      winhighlight = 'Normal:Background',
      col_offset = -3,
      side_padding = 0,
    }),
  },
  formatting = {
    fields = { 'kind', 'abbr', 'menu' },
    format = function(_, vim_item)
      local icon = icons.kind_icons[vim_item.kind]
      local kind = vim_item.kind

      vim_item.kind = ' ' .. icon .. ' '
      vim_item.menu = '    [' .. kind .. ']'

      return vim_item
    end,
  },
  view = {
    entries = {
      name = 'custom',
      selection_order = 'near_cursor',
    },
  },
  experimental = {
    ghost_text = true,
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'nvim_lua' },
    { name = 'buffer' },
  }, {
    { name = 'path' },
  }),
})

cmp.setup.cmdline('/', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' },
  },
})

cmp.setup.filetype('gitcommit', {
  sources = cmp.config.sources({
    { name = 'git' },
  }, {
    { name = 'buffer' },
  }),
  sorting = {
    comparators = {
      cmp.config.compare.offset,
      cmp.config.compare.exact,
      cmp.config.compare.sort_text,
      cmp.config.compare.score,
      cmp.config.compare.recently_used,
      cmp.config.compare.kind,
      cmp.config.compare.length,
      cmp.config.compare.order,
    },
  },
})

cmp.setup.filetype('TelescopePrompt', {
  enabled = function()
    return false
  end,
})
