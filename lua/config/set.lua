vim.g.netrw_banner = 0

vim.opt.linebreak = true
vim.opt.autoindent = true

vim.opt.cursorline = true
vim.opt.colorcolumn = "120"
vim.opt.guicursor = ""

vim.opt.path:append("**")

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 32
vim.opt.sidescrolloff = 16
vim.opt.signcolumn = "yes"
vim.opt.wrap = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.updatetime = 50

vim.opt.isfname:append("@-@")

vim.diagnostic.config({
    underline = { severity_limit = vim.diagnostic.severity.INFO, },
    virtual_text = {
        spacing = 4,
        prefix = '-',
        min_severity = vim.diagnostic.severity.WARN,
    },
    update_in_insert = false,
    signs = true,
    severity_sort = true,
    workspace = true,
})

-- Custom Color schemes -------------------------------------------------------
vim.cmd.colorscheme("nos-swingshift")
-- vim.cmd.colorscheme("nos-nightshift")
-- vim.cmd.colorscheme("nos-am-shift")

