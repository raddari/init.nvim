local extension = {
  h = 'c',
  hpp = 'cpp',
}

local filename = {
  ['.env'] = 'config',
  ['tmux.conf'] = { 'tmux' },
}

vim.filetype.add({
  extension = extension,
  filename = filename,
})
