return {
  "cuducos/yaml.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },
  ft = { "yaml", "yml" },
  keys = {
    {
      "<leader>yy",
      "<cmd>YAMLYankKey *<cr>",
      desc = "Yank YAML Key",
    },
  },
}
