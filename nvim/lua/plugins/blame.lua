return {
  "f-person/git-blame.nvim",
  opts = {
    enabled = false
  },
  keys = {
    { "<leader>gC", "<cmd>GitBlameOpenCommitURL<cr>", mode = { "n", "v" }, desc = "Open commit URL" }
  },
}
