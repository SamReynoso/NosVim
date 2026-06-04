return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    cmd = "Neotree",

-- Moved this to remaps.lua so It is more easily discoverable
    keys = {
        { "<leader>qw", "<cmd>Neotree toggle<cr>", desc = "Neo-tree" },
    },

    opts = {
        close_if_last_window = true,

        filesystem = {
            follow_current_file = {
                enabled = true,
            },
            filtered_items = {
                visible = false,
                hide_dotfiles = false,
                hide_gitignored = false,
            },
        },

        window = {
            width = 30,
        },
        default_component_configs = {
            indent = {
                with_expanders = true,
                expander_collapsed = "",
                expander_expanded = "",
            },
        },
    },
}
