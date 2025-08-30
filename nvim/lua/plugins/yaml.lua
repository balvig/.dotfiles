return {
  "cuducos/yaml.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-telescope/telescope.nvim", -- optional
  },
  ft = { "yaml", "yml" },
  keys = {
    {
      "<leader>yy", -- pick any shortcut you like
      "<cmd>YAMLYankKey *<cr>",
      desc = "Yank YAML Key",
    },
  },
}
