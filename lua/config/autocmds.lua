-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Force murphy theme after Vim is ready
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.o.background = "dark"
    vim.cmd("colorscheme murphy")
  end,
})
