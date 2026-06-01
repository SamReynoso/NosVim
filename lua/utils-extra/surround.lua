-- surround.lua
-- From the help:
-- In all of the following examples, the `*` denotes the cursor position:
-- 
--     Old text                    Command         New text ~
--     local str = H*ello          ysiw"           local str = "Hello"
--     require"nvim-surroun*d"     ysa")           require("nvim-surround")
--     char c = *x;                ysl'            char c = 'x';
--     int a[] = *32;              yst;}           int a[] = {32};
--
--
--


return {
  "kylechui/nvim-surround",
  event = "VeryLazy",

  opts = {},
}
