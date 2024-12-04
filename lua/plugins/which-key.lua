return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key.show({ global = false }")
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
  config = function()
    local wk = require("which-key")
    wk.add({
      { "<M-Right>", "<C-w>l", desc = "Move to right window", mode = "n" },
      { "<M-Left>", "<C-w>h", desc = "Move to left window", mode = "n" }
    })
  end
}
