-- init.lua - Main entry point for Neovim configuration

-- Ensure nvm-managed node is on PATH for Mason/LSP tools
local nvm_bins = vim.fn.glob(vim.fn.expand("~/.nvm/versions/node/*/bin"), false, true)
if #nvm_bins > 0 then
  table.sort(nvm_bins)
  vim.env.PATH = nvm_bins[#nvm_bins] .. ":" .. vim.env.PATH
end

-- Bootstrap lazy.nvim plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Load core configuration
require("config.settings")
require("config.keymaps")

-- Setup plugins with lazy.nvim
require("lazy").setup("plugins", {
  change_detection = {
    notify = false,
  },
})