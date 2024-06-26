return {
  {
    "tpope/vim-fugitive",
    keys = {
      {"<leader>gB", mode = { "n" }, "<cmd>GBrowse<cr>", desc = "Git Browse" },
      {"<leader>gB", mode = { "v" }, "<cmd>'<, '>GBrowse!<cr>", desc = "Git Browse" },
    }
  },
  { "tpope/vim-rhubarb" }
}
