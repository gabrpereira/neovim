require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "python", "vim", "vimdoc", "query", "markdown", "markdown_inline" },

  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}
