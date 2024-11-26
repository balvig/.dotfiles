-- Ignore built-in colorschemes
local builtins = {}

for name, _ in vim.fs.dir("$VIMRUNTIME/colors/") do
  if name:match("*.txt") then
    break
  else
    name = name:match(".*%.lua$") or name:match(".*%.vim$")
    table.insert(builtins, name)
  end
end

vim.opt.wildignore:append(builtins)

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
