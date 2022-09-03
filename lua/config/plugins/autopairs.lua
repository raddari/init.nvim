require('nvim-autopairs').setup({
  map_bs = false,
  map_c_h = true,
  map_c_w = true,
  check_ts = true,
  fast_wrap = {},
})

local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')
cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done({ map_char = { text = '' } }))
