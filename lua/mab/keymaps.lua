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

-- Telescope
-- keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false , hidden = true }))<cr>", opts)
keymap("n", "<c-t>", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "gr", "<cmd>Telescope lsp_references<cr>", opts)

-- Doc
keymap("n", "<leader>df", "<cmd>lua require('neogen').generate({ type = 'func' })<cr>", opts)

-- VISUAL --
--
-- stop yanking on paste in visual mode
keymap("v", "p", '"_dP', opts)

-- Vimspector
keymap("n", "<leader>vG", "<cmd>lua require('mab.vimspector').generate_debug_profile()<cr>", opts)
keymap("n", "<leader>vI", "<cmd>VimspectorInstall<cr>", opts)
keymap("n", "<leader>vU", "<cmd>VimspectorUpdate<cr>", opts)
keymap("n", "<leader>vR", "<cmd>call vimspector#RunToCursor()<cr>", opts)
keymap("n", "<leader>vc", "<cmd>call vimspector#Continue()<cr>", opts)
keymap("n", "<leader>vi", "<cmd>call vimspector#StepInto()<cr>", opts)
keymap("n", "<leader>vo", "<cmd>call vimspector#StepOver()<cr>", opts)
keymap("n", "<leader>vs", "<cmd>call vimspector#Launch()<cr>", opts)
keymap("n", "<leader>vt", "<cmd>call vimspector#ToggleBreakpoint()<cr>", opts)
keymap("n", "<leader>vu", "<cmd>call vimspector#StepOut()<cr>", opts)
keymap("n", "<leader>vS", "<cmd>call vimspector#Stop()<cr>", opts)
keymap("n", "<leader>vr", "<cmd>call vimspector#Restart()<cr>", opts)
keymap("n", "<leader>vx", "<cmd>VimspectorReset<cr>", opts)
keymap("n", "<leader>vH", "<cmd>lua require('mab.vimspector').toggle_human_mode()<cr>", opts)
