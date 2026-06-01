return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },

  opts = {
    signs = {
      add          = { text = "+" },
      change       = { text = "│" },
      delete       = { text = "_" },
      topdelete    = { text = "‾" },
      changedelete = { text = "~" },
    },

    current_line_blame = true,
    signcolumn = true,
    numhl = false,
    linehl = false,
    word_diff = false,

-- The nos colorschemes work well with these options set to true.
-- Still it's a lot of clutter to have on screen all the time.
--
--    numhl = true,
--    linehl = true,
--    word_diff = true,
--

  },

  keys = {
      {
          "<leader>hp",
          "Gitsings preview_hunk",
          desc = "Preview Hunk"
      },
      {
          "<leader>hs",
          "GitSigns stage_hunk",
          desc = "Stage Hunk",
      },
      {
          "<leader>hr",
          "GitSigns reset_hunk",
          desc = "Reset Hunk",
      },
      {
          "<leader>hb",
          "GitSigns blame_line",
          desc = "Blame Line",
      },

-- These where moved to remaps.lua
--    { "]h", function() require("gitsigns").next_hunk() end, desc = "Next Hunk" },
--    { "[h", function() require("gitsigns").prev_hunk() end, desc = "Prev Hunk" },
--
  },
}
