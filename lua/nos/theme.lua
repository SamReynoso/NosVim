
local M = {}

function M.setup(c)
    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") == 1 then
        vim.cmd("syntax reset")
    end

  local hl = vim.api.nvim_set_hl



    --
    hl(0, "Normal",         { fg = c.fg, bg = c.bg })
    hl(0, "Directory",      { fg = c.a4 })
    hl(0, "Comment",        { fg = c.comment, italic = true })

--  Statements
    hl(0, "Statement",      { fg = c.r1 })
    hl(0, "Repeat",         { fg = c.r2 })
    hl(0, "Conditional",    { fg = c.r3 })
    hl(0, "Operator",       { fg = c.r4 })

--  Functions
    hl(0, "Function",       { fg = c.f1, bold = true })
    hl(0, "Variable",       { fg = c.f2 })
    hl(0, "Type",           { fg = c.f3, bold = true })
    hl(0, "Keyword",        { fg = c.f4})
    hl(0, "PreProc",        { fg = c.f5 })

--  Constants
    hl(0, "String",         { fg = c.c1 })
    hl(0, "Character",      { fg = c.c2})
    hl(0, "Boolean",        { fg = c.c3 })
    hl(0, "Number",         { fg = c.c4 })
    hl(0, "Constant",       { fg = c.c5 })

-- Special
    hl(0, "Delimiter",      { fg = c.a5 })
    hl(0, "Special",      { fg = c.a5 })
    hl(0, "Todo",      { fg = c.todo})

-- Quick hack zone
    hl(0, "netrwDir",     { fg = c.fz})
    hl(0, "netrwPlain",     { fg = c.c1 })
    hl(0, "Title",          { fg = c.a1, bold = true })
    hl(0, "cssCustomProp", { fg = c.rx })
    hl(0, "Identifier", { fg = c.fg2 })
    hl(0, "DiagnosticUnnecessary",  { fg = c.a1,  italic = true}) -- links to stirng


--  Shell
    hl(0, "shFunctionExpr",         { fg = c.rx })
    hl(0, "shCase",                 { fg = c.fg2 })
    hl(0, "shCaseEsac",             { fg = c.a1 })
    hl(0, "shCaseLabel",            { fg = c.fx })
    hl(0, "shVariable",             { link = "Variable"})

    -- Diagnostic
    -- TODO: Add yellow
    hl(0, "DiagnosticError",    { fg = c.a1 })
    hl(0, "DiagnosticWarn",     { fg = c.a1 })
    hl(0, "DiagnosticInfo",     { fg = c.a1 })
    hl(0, "DiagnosticHint",     { fg = c.a1 })

    -- Vim
    hl(0, "LineNr",         { fg = c.comment })
    hl(0, "WinSeparator",   { fg = c.comment })
    hl(0, "Visual",         { bg = c.selection })
    hl(0, "CursorLine",     { bg = c.cursorline })
    hl(0, "CursorLineNr",   { fg = c.m3, bold = true })
    hl(0, "FloatBorder",    { fg = c.comment, bg = c.bg })

    -- Treesitter Maps
    hl(0, "@type",      { link = "Type" })
    hl(0, "@string",    { link = "String" })
    hl(0, "@qoute",     { link = "String" })
    hl(0, "@number",    { link = "Number" })
    hl(0, "@boolean",   { link = "Boolean" })
    hl(0, "@keyword",   { link = "Keyword" })
    hl(0, "@comment",   { link = "Comment" })
    hl(0, "@function",  { link = "Function" })
    hl(0, "@method",    { link = "Function" })
    hl(0, "@constant",  { link = "Constant" })
    hl(0, "@variable",  { link = "Variable" })
    hl(0, "@operator",  { link = "Operator" })

    -- Python
    hl(0, "pythonBuiltin",          { fg = c.fx })
    hl(0, "pythonInclude",          { fg = c.f1 }) -- links to PreProc
    hl(0, "pythonDecorator",        { fg = c.fz }) -- links to PreProc
    hl(0, "pythonDecoratorName",    { fg = c.fz }) -- links to Function
    hl(0, "pythonClass",            { fg = c.m3 }) -- links to Type
    hl(0, "pythonClassVar",         { fg = c.rx }) -- links to Identifier
    hl(0, "pythonAttribute",        { fg = c.m2 }) -- links to Function
    --  hl(0, "pythonType",         { fg = c.m7 , bold = true})
    --  hl(0, "pythonString",       { fg = c.m7 }) -- links to stirng
    --  hl(0, "pythonFString",      { fg = c.m7 }) -- links to String
    --  hl(0, "pythonQuotes",       { fg = c.m7 }) -- links to String
    --
    -- hl(0, "pythonFStringDelimiter", { fg = c.f1 })
    -- hl(0, "pythonFStringField",     { fg = c.ft }) -- links to String
    -- hl(0, "pythonFStringFieldSkip", { fg = c.m3 }) -- links to String
    -- hl(0, "pythonBoolean",          { fg = c.c3 }) -- links to Constant 
    -- hl(0, "pythonConstant",         { fg = c.m9 }) -- links to Function
    -- hl(0, "pythonFunction",         { fg = c.m4 }) -- links to Function
    -- TODO: "pythonTodo" -> Todo TODO

    --  Statements
    --  hl(1, "pythonStatement",    { fg = c.m2 })
    --  hl(0, "pythonRepeat",       { link = "Repeat" }) -- links to PreProc
    --  hl(0, "pythonConditional",  { fg = c.m5 }) -- links to Statement
    --  hl(0, "pythonOperator",     { fg = c.a2 }) -- links to Operator

    -- Not a member of a group yet.
    -- hl(0, "pythonNumber",           { fg = c.m9 }) -- links to Constant 
    -- hl(0, "pythonEllipsis",         { fg = c.xr}) -- links to pythonBuiltin
    end

return M
