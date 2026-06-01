return {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    opts = {
        plugins = {
            twilight = { enabled = true },
        },
        window = { width = 100 },
    },
    keys = {
        {
            "<leader>uz",
            "<cmd>ZenMode<cr>",
            desc = "Zen Mode",
        },
    },
}
