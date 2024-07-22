return {
  "nvim-telescope/telescope.nvim",
  keys = {
    {
      "<leader>fd",
      LazyVim.pick("files", { cwd = "~/.dotfiles" }),
      desc = "Find dotfiles",
    },
  },
}
