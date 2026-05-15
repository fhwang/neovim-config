-- telescope.lua - Fuzzy finder configuration
return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
      cond = function()
        return vim.fn.executable "cmake" == 1
      end,
    },
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        path_display = { "truncate" },
        file_ignore_patterns = {
          "node_modules",
          ".git/",
          "target/",
          "build/",
          "dist/",
          ".next/",
          "__pycache__/",
          "%.lock",
          "tmp/",
          "log/",
          "coverage/",
          "*.log",
          "public/assets/",
          "public/packs/",
          "vendor/bundle/",
        },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-j>"] = actions.move_selection_next,
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        },
      },
      pickers = {
        find_files = {
          hidden = true,
          find_command = function()
            if vim.fn.executable("fd") == 1 then
              return {
                "fd", "--type", "f", "--color", "never", "--hidden",
                "--exclude", ".git",
                "--exclude", "node_modules",
                "--exclude", "target",
                "--exclude", "build",
                "--exclude", "dist",
                "--exclude", ".next",
                "--exclude", "__pycache__",
                "--exclude", "tmp",
                "--exclude", "log",
                "--exclude", "coverage",
                "--exclude", "public/assets",
                "--exclude", "public/packs",
                "--exclude", "vendor/bundle",
              }
            else
              return { "find", ".", "-type", "f",
                "-not", "-path", "*/.git/*",
                "-not", "-path", "*/node_modules/*",
                "-not", "-path", "*/vendor/bundle/*",
                "-not", "-path", "*/tmp/*",
                "-not", "-path", "*/log/*",
              }
            end
          end,
        },
      },
    })

    -- Load fzf extension for better performance
    pcall(require("telescope").load_extension, "fzf")

    -- Keymaps
    local keymap = vim.keymap
    keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find files" })
    keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Live grep" })
    keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Find buffers" })
    keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "Help tags" })
    keymap.set("n", "<C-p>", "<cmd>Telescope find_files<CR>", { desc = "Find files" })
  end,
}