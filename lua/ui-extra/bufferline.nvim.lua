return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = "VeryLazy",
  opts = {
    options = {
      diagnostics = "nvim_lsp",
      separator_style = "slant",
      always_show_bufferline = true,
      show_buffer_close_icons = false,
      show_close_icon = false,
    },
  },
}
