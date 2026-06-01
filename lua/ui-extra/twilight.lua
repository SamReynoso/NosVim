return {
    "folke/twilight.nvim",
    cmd = {
        "Twilight",
        "TwilightEnable",
        "TwilightDisable",
    },
    keys = {
        {
            "<leader>ut",
            "<cmd>Twilight<CR>",
            desc = "Toggle Twilight"
        },
    },
    opts = {
        context = 12,
        expand = {
            "function",
            "method",
        },
    },
    exclude = {
      "netrw",
      "lazy",
      "mason",
      "help",
    },
}
