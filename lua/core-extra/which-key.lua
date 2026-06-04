--
--
--


return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      preset = "modern",
    },
    config = function(_, opts)
      local wk = require("which-key")
      wk.setup(opts)
      wk.add({
          { "<leader>b", group = "Buffers" },
          { "<leader>c", group = "Quickfix" },
          { "<leader>f", group = "Find" },
          { "<leader>h", group = "Git Hunk" },
          { "<leader>l", group = "LSP" },
          { "<leader>t", group = "Tabs" },
          { "<leader>u", group = "UI" },
          { "<leader>p", group = "Put" },

          { "<leader>q", group = "Sidebar" },

          { "<leader>w", group = "Windows" },
          { "<leader>z", group = "Spell" },
          })
    end,
}
