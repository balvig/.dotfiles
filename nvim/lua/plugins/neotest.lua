return {
  "nvim-neotest/neotest",
  dependencies = {
    "zidhuss/neotest-minitest",
  },
  opts = {
    adapters = {
      ["neotest-minitest"] = {},
    },
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
      unknown = "",
    },
    output = {
      enabled = true, -- show test output on failure
    },
    quickfix = {
      enabled = false, -- Disable the split window with broken parsings
    },
    status = {
      virtual_text = false, -- Don't show text inline
    },
  },
  keys = {
    {
      "<leader>ta",
      function()
        require("neotest").run.attach()
      end,
      desc = "Attach To Test",
    },
  },
}
