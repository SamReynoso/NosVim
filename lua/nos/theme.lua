
local M = {}

function M.setup(c)
    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") == 1 then
        vim.cmd("syntax reset")
    end

    local hl = vim.api.nvim_set_hl


    hl(0, "Normal",       { fg = c.fg, bg = c.bg })
    hl(0, "NormalFloat",  { fg = c.fg, bg = c.bg })
    hl(0, "Comment",      { fg = c.comment, italic = true })
    hl(0, "String",       { fg = c.green })
    hl(0, "Character",    { fg = c.green })
    hl(0, "Number",       { fg = c.yellow })
    hl(0, "Boolean",      { fg = c.yellow })
    hl(0, "Function",     { fg = c.blue })
    hl(0, "Identifier",   { fg = c.cyan })
    hl(0, "Keyword",      { fg = c.magenta })
    hl(0, "Statement",    { fg = c.magenta })
    hl(0, "Type",         { fg = c.blue })
    hl(0, "Constant",     { fg = c.cyan })
    hl(0, "Directory",    { fg = c.blue })

    hl(0, "DiagnosticError", { fg = c.red })
    hl(0, "DiagnosticWarn",  { fg = c.yellow })
    hl(0, "DiagnosticInfo",  { fg = c.blue })
    hl(0, "DiagnosticHint",  { fg = c.cyan })

    hl(0, "CursorLine", { bg = c.cursorline })
    hl(0, "Visual", { bg = c.selection })
    hl(0, "Search", { fg = c.bg, bg = c.yellow })

    hl(0, "Pmenu", { fg = c.fg, bg = c.dark_bg })
    hl(0, "PmenuSel", { fg = c.fg, bg = c.selection})
    hl(0, "PmenuSbar", { bg = c.selection})
    hl(0, "PmenuThumb",{ bg = c.comment })

    hl(0, "LineNr", { fg = c.comment })
    hl(0, "CursorLineNr", { fg = c.yellow, bold = true })
    hl(0, "FloatBorder", { fg = c.comment, bg = c.bg })
    hl(0, "WinSeparator", { fg = c.comment })
    hl(0, "MatchParen", { fg = c.fg, bg = c.light_bg, bold = true })

    -- GitSigns group
    hl(0, "GitSignsAdd", { fg = c.green })
    hl(0, "GitSignsAddLn", { bg = c.green_bg })
    hl(0, "GitSignsChange", { fg = c.blue })
    hl(0, "GitSignsChangeLn", { bg = c.change_bg })
    hl(0, "GitSignsDelete", { fg = c.red })
    hl(0, "GitSignsDeleteLn", { bg = c.red_bg })
    hl(0, "GitSignsCurrentLineBlame", { fg = c.comment, italic = true })

    -- Essential editor groups
    hl(0, "NonText", { fg = c.comment })
    hl(0, "Whitespace", { fg = c.comment })
    hl(0, "EndOfBuffer", { fg = c.bg })
    hl(0, "CursorColumn", { bg = c.light_bg })
    hl(0, "ColorColumn", { bg = c.dark_bg })
    hl(0, "SignColumn", { bg = c.bg })
    hl(0, "FoldColumn", { fg = c.comment, bg = c.bg })
    hl(0, "Folded", { fg = c.comment, bg = c.dark_bg })
    hl(0, "StatusLine", { fg = c.fg, bg = c.dark_bg })
    hl(0, "StatusLineNC", { fg = c.comment, bg = c.dark_bg })
    hl(0, "VertSplit", { fg = c.comment })
    hl(0, "Title", { fg = c.blue, bold = true })
    hl(0, "ErrorMsg", { fg = c.red })
    hl(0, "WarningMsg", { fg = c.yellow })
    hl(0, "ModeMsg", { fg = c.green })
    hl(0, "Question", { fg = c.cyan })

    -- Diagnostics underlines
    hl(0, "DiagnosticUnderlineError", { undercurl = true, sp = c.red })
    hl(0, "DiagnosticUnderlineWarn", { undercurl = true, sp = c.yellow })
    hl(0, "DiagnosticUnderlineInfo", { undercurl = true, sp = c.blue })
    hl(0, "DiagnosticUnderlineHint", { undercurl = true, sp = c.cyan })

    -- Treesitter
    hl(0, "@comment",              { link = "Comment" })
    hl(0, "@string",               { link = "String" })
    hl(0, "@number",               { link = "Number" })
    hl(0, "@boolean",              { link = "Boolean" })
    hl(0, "@function",             { link = "Function" })
    hl(0, "@method",               { link = "Function" })
    hl(0, "@keyword",              { link = "Keyword" })
    hl(0, "@type",                 { link = "Type" })
    hl(0, "@constant",             { link = "Constant" })
    hl(0, "@variable",             { fg = c.fg })

    hl(0, "@punctuation",          { fg = c.fg })
    hl(0, "@punctuation.bracket",  { fg = c.fg })
    hl(0, "@punctuation.delimiter",{ fg = c.fg })
    hl(0, "@punctuation.special",  { fg = c.fg })

    hl(0, "@constructor",          { fg = c.fg })
    hl(0, "@operator",             { fg = c.fg })

    hl(0, "Delimiter", { fg = c.fg })
    hl(0, "Operator",  { fg = c.fg })

    -- Telescope
    hl(0, "TelescopeNormal", { fg = c.fg, bg = c.bg })
    hl(0, "TelescopeBorder", { fg = c.comment, bg = c.bg })
    hl(0, "TelescopeSelection", { bg = c.light_bg })

    -- Completion
    hl(0, "CmpItemAbbrMatch", { fg = c.blue, bold = true })
    hl(0, "CmpItemAbbrMatchFuzzy", { fg = c.cyan })

    -- Diffs
    hl(0, "DiffAdd", { bg = c.green_bg })
    hl(0, "DiffChange", { bg = c.change_bg })
    hl(0, "DiffDelete", { bg = c.red_bg })
    hl(0, "DiffText", { bg = c.light_bg, fg = c.blue })

end

return M
