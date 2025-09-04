  return {
    "rcarriga/nvim-dap-ui",
    opts = {
      layouts = {
        {
          elements = {
            { id = "repl", size = 1.0 }
          },
          position = "bottom",
          size = 15
        }
      },
      controls = { enabled = false }
    },
    keys = {
      { "<leader>dx", function() require("dap").clear_breakpoints() end, desc = "Clear All Breakpoints" }
    }
  }
