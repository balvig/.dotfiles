-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>gH", function()
  Snacks.terminal.open({ "gh", "dash" }, { esc_esc = false, ctrl_hjkl = false })
end, { desc = "GH Dash (cwd)" })

vim.keymap.set("n", "<leader>cM", [[$v%lohc<CR><CR><Up><C-r>"<Esc>:s/,/,\r/g<CR>:'[,']norm ==<CR>]], { noremap = true, silent = true, desc = "Line break arguments" })
