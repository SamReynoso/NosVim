return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "vimdoc",
--      "bash", shellcheck tried to resolve a path 300,234 times.
      "json",
      "yaml",
      "markdown",
      "markdown_inline",
    },

    highlight = {
      enable = true,
    },

    indent = {
      enable = true,
    },
  },
}
