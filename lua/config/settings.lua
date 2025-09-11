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
opt.wrap = false
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