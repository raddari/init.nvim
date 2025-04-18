vim.filetype.add({
  extension = {
    vert = 'glsl',
    frag = 'glsl',
    asm = 'nasm',
    s = function(path, bufnr)
      vim.b[bufnr].asmsyntax = 'nasm'
      return 'nasm', function(b)
        vim.b[b].asmsyntax = 'nasm'
      end
    end,
  },
})
