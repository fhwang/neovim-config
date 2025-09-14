-- settings.lua - Core Neovim settings
local opt = vim.opt
local g = vim.g

-- Leader key
g.mapleader = " "
g.maplocalleader = " "

-- Line numbers
opt.number = true
opt.relativenumber = true

-- Mouse support
opt.mouse = "a"

-- Clipboard integration
opt.clipboard = "unnamedplus"

-- Splits
opt.splitbelow = true
opt.splitright = true

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

-- Indentation
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true

-- Visual
opt.wrap = true
opt.termguicolors = true
opt.cursorline = false
opt.scrolloff = 8
opt.sidescrolloff = 8

-- Files
opt.backup = false
opt.swapfile = false
opt.undofile = true

-- Completion
opt.completeopt = { "menu", "menuone", "noselect" }

-- Update time
opt.updatetime = 250
opt.timeoutlen = 300

-- Sign column
opt.signcolumn = "yes"

-- Neovide specific settings
if g.neovide then
  -- Disable Cmd+C saving file (only copy to clipboard)
  vim.keymap.set("n", "<D-c>", '"+y', { desc = "Copy to system clipboard" })
  vim.keymap.set("v", "<D-c>", '"+y', { desc = "Copy to system clipboard" })
  vim.keymap.set("i", "<D-c>", '<Esc>"+yi', { desc = "Copy to system clipboard" })
  
  -- Optional: Set other common Mac shortcuts
  vim.keymap.set("n", "<D-v>", '"+p', { desc = "Paste from system clipboard" })
  vim.keymap.set("i", "<D-v>", '<C-r>+', { desc = "Paste from system clipboard" })
  vim.keymap.set("n", "<D-s>", ":w<CR>", { desc = "Save file" })
  vim.keymap.set("i", "<D-s>", '<Esc>:w<CR>a', { desc = "Save file" })
end