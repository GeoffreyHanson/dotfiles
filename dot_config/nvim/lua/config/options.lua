-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Auto-detect python env
vim.env.VIRTUAL_ENV = vim.fn.getcwd() .. "/.venv"
vim.env.PATH = vim.env.VIRTUAL_ENV .. "/bin:" .. vim.env.PATH
