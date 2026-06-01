return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },

  config = function()
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    vim.lsp.config("lua_ls", {
        capabilities = capabilities,
        settings = {
            Lua = {
                runtime = {
                    version = "LuaJIT",
                },
                diagnostics = {
                    globals = { "vim" },
                },
                workspace = {
                    checkThirdParty = false,
                    library = vim.api.nvim_get_runtime_file("", true),
                },
                telemetry = { enable = false },
            }
        }
    })

    -- vim.lsp.config("bashls", {
    --   capabilities = capabilities,
    -- })

    vim.lsp.enable("lua_ls")
    -- vim.lsp.enable("bashls")

    -- vim.keymap.set("n", "gd", vim.lsp.buf.definition)
    -- vim.keymap.set("n", "gr", vim.lsp.buf.references)
    -- vim.keymap.set("n", "K", vim.lsp.buf.hover)
    -- vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
    -- vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
  end,
}
