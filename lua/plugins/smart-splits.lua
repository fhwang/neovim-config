-- smart-splits.lua - Enhanced split management
return {
  "mrjones2014/smart-splits.nvim",
  config = function()
    require("smart-splits").setup({
      ignored_filetypes = {
        "nofile",
        "quickfix",
        "prompt",
      },
      ignored_buftypes = { "NvimTree" },
      default_amount = 3,
      at_edge = "wrap",
      move_cursor_same_row = false,
      cursor_follows_swapped_bufs = false,
      resize_mode = {
        quit_key = "<ESC>",
        resize_keys = { "h", "j", "k", "l" },
        silent = false,
        hooks = {
          on_enter = nil,
          on_leave = nil,
        },
      },
      ignored_events = {
        "BufEnter",
        "WinEnter",
      },
      multiplexer_integration = nil,
    })

    -- Keymaps for resizing splits
    vim.keymap.set("n", "<A-h>", require("smart-splits").resize_left, { desc = "Resize split left" })
    vim.keymap.set("n", "<A-j>", require("smart-splits").resize_down, { desc = "Resize split down" })
    vim.keymap.set("n", "<A-k>", require("smart-splits").resize_up, { desc = "Resize split up" })
    vim.keymap.set("n", "<A-l>", require("smart-splits").resize_right, { desc = "Resize split right" })

    -- Moving between splits
    vim.keymap.set("n", "<C-h>", require("smart-splits").move_cursor_left, { desc = "Move to left split" })
    vim.keymap.set("n", "<C-j>", require("smart-splits").move_cursor_down, { desc = "Move to split below" })
    vim.keymap.set("n", "<C-k>", require("smart-splits").move_cursor_up, { desc = "Move to split above" })
    vim.keymap.set("n", "<C-l>", require("smart-splits").move_cursor_right, { desc = "Move to right split" })

    -- Swapping buffers between windows
    vim.keymap.set("n", "<leader><leader>h", require("smart-splits").swap_buf_left, { desc = "Swap buffer left" })
    vim.keymap.set("n", "<leader><leader>j", require("smart-splits").swap_buf_down, { desc = "Swap buffer down" })
    vim.keymap.set("n", "<leader><leader>k", require("smart-splits").swap_buf_up, { desc = "Swap buffer up" })
    vim.keymap.set("n", "<leader><leader>l", require("smart-splits").swap_buf_right, { desc = "Swap buffer right" })
  end,
}