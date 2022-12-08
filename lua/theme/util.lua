local M = {}

M.hl = function(group, args)
  local command
  if args.link ~= nil then
    command = ('hi! link %s %s'):format(group, args.link)
  else
    command = ('hi %s guifg=%s guibg=%s gui=%s guisp=%s'):format(
      group,
      args.fg or 'NONE',
      args.bg or 'NONE',
      args.attr or 'NONE',
      args.sp or 'NONE'
    )
  end
  vim.cmd(command)
end

return M
