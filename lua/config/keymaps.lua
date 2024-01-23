-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local Util = require("lazyvim.util")

-- DO NOT USE THIS IN YOU OWN CONFIG!!
-- use `vim.keymap.set` instead
local map = Util.safe_keymap_set

map("n", "<leader>Q", ":q!<cr>", { desc = "Quit with out saving" })

map("x", "p", [["_dP]])

map("n", "<leader>n", ":tabnext<cr>")
map("n", "<leader>m", ":tabprevious<cr>")

-- Press jk fast to enter
map("i", "jk", "<ESC>")
map("i", "jh", "<ESC>")

map("n", "<c-t>", "<cmd>Telescope live_grep<cr>")
map("n", "<c-p>", "<cmd>Telescope find_files<cr>")

map("n", "<Tab>", ":AerialToggle<cr>", { desc = "Aerial (Symbols)" })
