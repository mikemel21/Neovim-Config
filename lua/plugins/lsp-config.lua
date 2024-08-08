return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "tsserver", "ltex", "pyright"}
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({}) -- lua
      lspconfig.tsserver.setup({}) -- JS and TS
      lspconfig.ltex.setup({}) -- Markdown, LaTex, etc.
      lspconfig.pyright.setup({}) -- Python (maybe works?)
      -- display more info of piece of code
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      -- go to where variable is defined
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      -- open up code actions
      vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
