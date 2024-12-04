vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.g.gruvbox_transparent_bg = 1

-- Transparent background
vim.cmd[[
  augroup TransparentBackground
    autocmd!
    autocmd ColorScheme * highlight Normal ctermbg=none guibg=none
    autocmd ColorScheme * highlight NonText ctermbg=none guibg=none
  augroup END
]]

vim.g.mapleader = " "

-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true

------------------
-- Key Mappings --
------------------
-- Open NeoTree with <space> + e
-- vim.api.nvim_set_keymap('n', '<Space>e', ':Neotree toggle<CR>', { noremap = true, silent = true})
-- <Alt> + Right Arrow -> Move to right window
vim.api.nvim_set_keymap('n', '<M-Right>', '<C-w>l', { noremap = true, silent = true })
-- <Alt> + Left Arrow -> Move to left window
vim.api.nvim_set_keymap('n', '<M-Left>', '<C-w>h', { noremap = true , silent = true})
