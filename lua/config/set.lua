vim.g.netrw_banner = 0

vim.opt.linebreak = true
vim.opt.autoindent = true

vim.opt.cursorline = true
vim.opt.guicursor = ""

vim.opt.path:append("**")

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.spellfile = vim.fn.stdpath("config") .. "/spell/en.utf-8.add"
vim.opt.undofile = true

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.updatetime = 50

vim.opt.isfname:append("@-@")

vim.diagnostic.config({
    -- virtual_text = {
    --  spacing = 4,
    --  prefix = "",
    --  min_severity = vim.diagnostic.severity.INFO,
    --},
    --signs = false,

    virtual_text = false,
    signs = true,
    virtual_lines = { current_line = true },
    underline = true,

    update_in_insert = false,
    severity_sort = true,
    workspace = true,
})

-- Custom Color schemes -------------------------------------------------------
vim.cmd.colorscheme("nos-swingshift")
