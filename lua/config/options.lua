-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local g = vim.g
local opt = vim.opt
g.tmux_navigator_no_mappings = 1
opt.relativenumber = false
opt.undofile = false
opt.undolevels = 1000
g.python3_host_prog = "~/.virtualenvs/nvim_venv/bin/python3"
