-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local neotest = require("neotest")

vim.keymap.set("n", "<leader>ta", function()
  neotest.run.attach()
end, { desc = "Attach To Test" })
