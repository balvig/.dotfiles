return {
  {
    "FabijanZulj/blame.nvim",
    lazy = false,
    config = function()
      require('blame').setup {}
    end,
    keys = {
      { "<leader>gb", "<cmd>BlameToggle<cr>", mode = { "n", "v" }, desc = "Git Blame" },
    },
  },
}
