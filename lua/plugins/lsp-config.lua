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
        ensure_installed = { "lua_ls", "ts_ls", "ltex", "pyright"}
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
 
      capabilities.textDocument.completion.completionItem.snippetSupport = true
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        settings = {
          Lua = {
            diagnostics = {
              disable = { "trailing-space" }
            }
          }
        },
        capabilities = capabilities
      }) -- lua
      lspconfig.ts_ls.setup({
        capabilities = capabilities
      }) -- JS and TS
--      lspconfig.ltex.setup({
--        capabilities = capabilities
--      }) -- MD, LaTex, etc.
      lspconfig.pyright.setup({
        capabilities = capabilities
      }) -- Python (might work)
      lspconfig.html.setup({
        capabilities = capabilities
      })
      lspconfig.emmet_ls.setup({
        capabilities = capabilities,
        file_types = { "css", "eruby", "html", "javascript", "javascriptreact", "less", "sass", "scss", "svelte", "pug", "typescriptreact", "vue"},
        init_options = {
          html = {
            options = {
              ["bem.enabled"] = true,
            }
          }
        }
      })

      -- display more info of piece of code
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      -- go to where variable is defined
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      -- open up code actions
      vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
