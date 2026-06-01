return {
    "ibhagwan/fzf-lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    keys = {
        {
            "<leader>ff",
            "<cmd>FzfLua files<CR>",
            { desc = "Find Files" },
        },
        {
            "<leader>fg",
            "<cmd>FzfLua live_grep<CR>",
            { desc = "Live Grep" },
        },
        {
            "<leader>fb",
            "<cmd>FzfLua buffers<CR>",
            { desc = "Find Buffer" },
        },
        {
            "<leader>fr",
            "<cmd>FzfLua oldfiles<CR>",
            { desc = "Recent Files" },
        },
    },
    opts = {
        "default-title",
        fzf_colors = true,
        winopts = {
            height = 0.85,
            width = 0.80,
        },
    },
}
