return {
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    opts = {
        ensure_installed = {
            "lua_ls",
            "bashls",
            "pyright",
            "gopls",
            "clangd",
            "ts_ls",
            "html",
            "cssls",
            "jsonls",
            "yamlls",
            "marksman",
            "taplo",
            "lemminx",
            "dockerls",
            "docker_compose_language_service",
        }
    },
  },
}
