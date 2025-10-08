return {
  {
    "saghen/blink.cmp",
    opts = {
      enabled = function()
        return vim.bo.filetype ~= "dap-repl" -- Suggestions in DAP REPL are distracting
      end,
      sources = {
        providers = {
          snippets = {
            score_offset = 100, -- Higher priority than copilot
          },
        },
      },
    },
  },
}
