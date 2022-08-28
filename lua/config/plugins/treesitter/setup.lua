require('nvim-treesitter.configs').setup({
  auto_install = true,
  ensure_installed = {
    'bash',
    'c',
    'cmake',
    'cpp',
    'css',
    'fish',
    'html',
    'java',
    'javascript',
    'jsdoc',
    'json',
    'lua',
    'make',
    'markdown',
    'markdown_inline',
    'python',
    'regex',
    'rust',
    'scss',
    'toml',
    'tsx',
    'typescript',
    'vim',
    'yaml',
    'zig',
  },
  highlight = {
    enable = true,
    use_languagetree = true,
  },
  indent = { enable = true },
  autotag = { enable = true },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
  refactor = {
    highlight_definitions = { enable = true },
    highlight_current_scope = { enable = false },
  },
})
