local cmp = require('cmp')
local map = cmp.mapping

return {
  ['<C-p>'] = map.select_prev_item(),
  ['<C-n>'] = map.select_next_item(),
  ['<S-Tab>'] = map.select_prev_item(),
  ['<Tab>'] = map.select_next_item(),
  ['<C-S-f>'] = map.scroll_docs(-4),
  ['<C-f>'] = map.scroll_docs(4),
  ['<C-Space>'] = map.complete(),
  ['<C-e>'] = map.close(),
  ['<CR>'] = map.confirm({
    behavior = cmp.ConfirmBehavior.Insert,
    select = true,
  }),
}
