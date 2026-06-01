--
--
--


return {
  "NeogitOrg/neogit",
  cmd = "Neogit",

  dependencies = {
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim",
  },
  keys = {
    {
      "<leader>gg",
      "<cmd>Neogit<cr>",
      desc = "Neogit",
    },
  },

  opts = {
    disable_commit_confirmation = false,

    integrations = {
      diffview = true,
      telescope = false,
    },

    signs = {
      section = { "󰘖", "󰘕" },
      item = { "󰅂", "󰅀" },
      hunk = { "", "" },
    },
  },
}
