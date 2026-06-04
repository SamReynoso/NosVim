vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local opts = { noremap = true, silent = true }

-- Files Netrw -----------------------------------------------------------------------
vim.keymap.set("n", "<leader>-", "<cmd>Explore<CR>", { desc = "Explore" })

-- Windows --------------------------------------------------------------------- 
vim.keymap.set("n", "<leader>wv", "<C-w>v", { desc = "Vertical Split" })
vim.keymap.set("n", "<leader>ws", "<C-w>s", { desc = "Horizontal Split" })
vim.keymap.set("n", "<leader>wh", "<C-w>h", { desc = "Focus Left" })
vim.keymap.set("n", "<leader>wj", "<C-w>j", { desc = "Focus Down" })
vim.keymap.set("n", "<leader>wk", "<C-w>k", { desc = "Focus Up" })
vim.keymap.set("n", "<leader>wl", "<C-w>l", { desc = "Focus Right" })
vim.keymap.set("n", "<leader>wx", "<cmd>close<CR>", { desc = "Close Window" })

-- Window Risize ---------------------------------------------------------------
vim.keymap.set("n", "<Up>", "<cmd>resize +20<CR>", { desc = "Height +20" })
vim.keymap.set("n", "<Left>", "<cmd>vertical resize -20<CR>", { desc = "Width -20" })
vim.keymap.set("n", "<Right>", "<cmd>vertical resize +20<CR>", { desc = "Width +20" })
vim.keymap.set("n", "<Down>", "<cmd>resize -20<CR>", { desc = "Height -20" })
vim.keymap.set("n", "<C-Up>", "<cmd>resize +5<CR>", { desc = "Height +5" })
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -5<CR>", { desc = "Width -5" })
vim.keymap.set("n", "<C-Down>", "<cmd>resize -5<CR>", { desc = "Height -5" })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +5<CR>", { desc = "Width +5" })

-- Tabs ------------------------------------------------------------------------
vim.keymap.set("n", "<leader>tt", "<cmd>tabnew<CR>", { desc = "New Tab" })
vim.keymap.set("n", "<leader>tc", "<cmd>tabnew<CR>", { desc = "Close Tab" })
vim.keymap.set("n", "<leader>tn", "<cmd>tabnext<CR>", { desc = "Next Tab" })
vim.keymap.set("n", "<leader>tp", "<cmd>tabprevious<CR>", { desc = "Previous Tab" })
vim.keymap.set("n", "<leader>to", "<cmd>tabonly<CR>", { desc = "Close Others" })
vim.keymap.set("n", "<leader>tf", "<cmd>tabfirst<CR>", { desc = "First Tab" })
vim.keymap.set("n", "<leader>tl", "<cmd>tablast<CR>", { desc = "Last Tab" })
vim.keymap.set("n", "<leader>tm", "<cmd>tabmove", { desc = "Move Tab" })
vim.keymap.set("n", "<leader>tl", "<cmd>tabs<CR>", { desc = "List Tabs", })

-- Quickfix --------------------------------------------------------------------
vim.keymap.set("n", "<leader>ca", "<cmd>caddfile<CR>", { desc = "Add File To Quickfix" })
vim.keymap.set("n", "<leader>co", "<cmd>copen<CR>", { desc = "Open Quickfix" })
vim.keymap.set("n", "<leader>cc", "<cmd>cclose<CR>", { desc = "Close Quickfix" })
vim.keymap.set("n", "<leader>cn", "<cmd>cnext<CR>", { desc = "Next Quickfix" })
vim.keymap.set("n", "<leader>cp", "<cmd>cprev<CR>", { desc = "Previous Quickfix" })
vim.keymap.set("n", "<leader>cf", "<cmd>cfirst<CR>", { desc = "First Quickfix" })

vim.keymap.set("n", "<leader>cll", "<cmd>clast<CR>", { desc = "Last Quickfix" })
vim.keymap.set("n", "<leader>clc", "<cmd>lopen<CR>", { desc = "Open Local Quickfix" })
vim.keymap.set("n", "<leader>clp", "<cmd>lprev<CR>", { desc = "Close Local Quickfix" })

-- Spell -----------------------------------------------------------------------
vim.keymap.set("n", "<leader>zz", "z=", { desc = "Spell Suggestions", })
vim.keymap.set("n", "<leader>zn", "]s", { desc = "Next Misspelling", })
vim.keymap.set("n", "<leader>zp", "[s", { desc = "Previous Misspelling" })

-- LSP -------------------------------------------------------------------------
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Goto Definition", })
vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Goto References" })
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover Documentation" })
vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, { desc = "Rename Symbol" })
vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, { desc = "Code Action" })

-- Visual Mode -----------------------------------------------------------------
vim.keymap.set("v", "p", "_dP", { desc = "Paste Without Yanking" })



-- Insert Mode -----------------------------------------------------------------
-- vim.keymap.set("i", "<C-c>", "<cmd>PickColorInsert<cr>", opts)
-- I miss this plug-in 

-- FZF -------------------------------------------------------------------------
-- vim.keymap.set("n", "<leader>ff", "<cmd>FzfLua files<CR>", { desc = "Find Files" })
-- vim.keymap.set("n", "<leader>fg", "<cmd>FzfLua live_grep<CR>", { desc = "Live Grep" })
-- vim.keymap.set("n", "<leader>fb", "<cmd>FzfLua buffers<CR>", { desc = "Find Buffers" })
-- vim.keymap.set("n", "<leader>fr", "<cmd>FzfLua oldfiles<CR>", { desc = "Recent Files" })

-- Buffers ---------------------------------------------------------------------
vim.keymap.set("n", "<S-h>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Previous Buffer", })
vim.keymap.set("n", "<S-l>", "<cmd>BufferLineCycleNext<CR>", { desc = "Next Buffer" })

vim.keymap.set("n", "]h", "<cmd>GitSigns next_hunk<CR>", { desc = "Next Hunk" })
vim.keymap.set("n", "[h", "<cmd>Gitsigns prev_hunk<CR>", { desc = "Prev Hunk" })

-- vim.keymap.set(
--     "n",
--     "s",
--     function()
--         require("flash").jump()
--     end,
--     { desc = "Prev Hunk" }
-- )
-- 
-- vim.keymap.set(
--     "n", "S",
--     function()
--         require("flash").treesitter()
--     end,
--     { desc = "Prev Hunk" }
-- )
-- 

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
