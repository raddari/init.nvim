---@class Util
local M = {
  keymap = {},
}

local set_all = function(specs)
  for _, spec in ipairs(specs) do
    if type(spec) == 'table' then
      M.keymap.set(spec)
    end
  end
end

---@param spec table|table[]
M.keymap.set = function(spec)
  if type(spec[1]) == 'table' then
    set_all(spec)
    return
  end

  ---@cast spec table

  ---@type string|string[]
  local mode = spec.mode or 'n'
  ---@type string
  local lhs = assert(spec[1], 'map_key requires a non-nil lhs')
  ---@type string|fun()
  local rhs = assert(spec[2], 'map_key requires a non-nil rhs')

  local valid = { 'desc', 'buffer', 'silent', 'expr' }
  local opts = {}
  for key, value in pairs(spec) do
    if vim.tbl_contains(valid, key) then
      opts[key] = value
    end
  end

  vim.keymap.set(mode, lhs, rhs, opts)
end

M.root_dir = function()
  return vim.lsp.buf.list_workspace_folders()[1] or vim.fn.getcwd()
end

M.hl_overrides = function(colors_name, overrides)
  local group = vim.api.nvim_create_augroup('hl-overrides', {})
  vim.api.nvim_create_autocmd({ 'Colorscheme' }, {
    group = group,
    pattern = { colors_name },
    callback = function(_)
      for hl, override in pairs(overrides) do
        vim.api.nvim_set_hl(0, hl, override)
      end
    end,
  })
end

return M
