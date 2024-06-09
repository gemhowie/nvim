-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap

keymap.set("i", "jk", "<Esc>")
keymap.set("i", "kj", "<Esc>")
keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<cr>")

-- Keep cursor at the bottom of the visual selection after you yank it.
keymap.set("v", "y", "ygv<Esc>")

-- Prevent selecting and pasting from overwriting what you originally copied.
keymap.set("x", "p", "pgvy")

-- vim-tmux-navigator
if os.getenv("TMUX") then
  keymap.set("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>")
  keymap.set("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>")
  keymap.set("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>")
  keymap.set("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>")
end

vim.api.nvim_set_keymap("n", "j", "<Plug>(accelerated_jk_gj)", {})
vim.api.nvim_set_keymap("n", "k", "<Plug>(accelerated_jk_gk)", {})
vim.api.nvim_set_keymap("n", "w", "<CMD>lua require'accelerated-jk'.move_to('w')<CR>", {})
vim.api.nvim_set_keymap("n", "e", "<CMD>lua require'accelerated-jk'.move_to('e')<CR>", {})
vim.api.nvim_set_keymap("n", "b", "<CMD>lua require'accelerated-jk'.move_to('b')<CR>", {})
