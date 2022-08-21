require('nvim-treesitter.configs').setup({
  ensure_installed = {
    "bash",
    "c",
    "cpp",
    "fish",
    "java",
    "lua",
    "python",
    "rust",
  },
  highlight = {
    enable = true,
  },
})
