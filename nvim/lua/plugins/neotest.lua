return {
  "nvim-neotest/neotest",
  opts = {
    icons = {
      expanded = "",
      child_prefix = "",
      child_indent = "",
      final_child_prefix = "",
      non_collapsible = "",
      collapsed = "",

      passed = "",
      running = "",
      failed = "",
      unknown = ""
    }
  },
  keys = {
    { "<leader>ta", function() require("neotest").run.attach() end, desc = "Attach To Test" },
    -- { "<leader>td", function() require("neotest").run.run(); require("neotest").run.attach() end, desc = "Run and attach to nearest" },
  },
}
