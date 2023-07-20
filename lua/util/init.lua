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

return M
