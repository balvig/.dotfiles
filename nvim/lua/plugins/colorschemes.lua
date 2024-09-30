return {
  { "ellisonleao/gruvbox.nvim" },
  { "Mofiqul/dracula.nvim" },
  {
    "folke/tokyonight.nvim",
    config = function()
      require("tokyonight").setup({
        on_colors = function(colors)
          colors.fg_gutter = "#627E97"  -- Clearer line numbers
        end,
      })
    end
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
