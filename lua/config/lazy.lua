-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    { import = "core" },            -- lsp, cmp, fzf, etc
--    { import = "core-extra" },    -- which-key 
    { import = "ui" },              -- lualine, 
--    { import = "ui-extra" },      -- bufferline, twilight, zen
    { import = "utils" },           -- gitsigns, neogit, colorpicker
--    { import = "utils-extra" },   -- flash, luaship, surround, autopairs
--    { import = "rice" },          -- neo-tree, undo-tree
  },
  checker = { enabled = true },
})
