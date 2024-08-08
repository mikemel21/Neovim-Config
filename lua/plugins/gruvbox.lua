-- gruvbox theme
return {
  "ellisonleao/gruvbox.nvim",
  name = "gruvbox",
  priority = 999 ,
  config = function()
    -- require("gruvbox").setup()
    vim.cmd.colorscheme "gruvbox"
  end
}
