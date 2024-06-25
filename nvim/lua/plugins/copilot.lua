  -- Point copilot to compatible Node version independent from current project
return {
  {
    "zbirenbaum/copilot.lua",
    opts = {
      copilot_node_command = vim.fn.expand("$HOME") .. "/.nvm/versions/node/v18.20.3/bin/node"
    },
  }
}
