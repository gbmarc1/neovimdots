local opts = {noremap = true, silent = true}

-- shorthand
local keymap = vim.api.nvim_set_keymap

-- Modes:
--     normal_mode = "n"
--     insert_mode = "i"
--     visual_mode = "v"
--     visual_block_mode = "x"
--     term_mode = "t"
--     command_mode = "c"

-- NORMAL --

-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)
