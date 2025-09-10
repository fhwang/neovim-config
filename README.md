# NeoVim Configuration

A clean, modern NeoVim configuration built for experienced Vim users with 10+ years of experience.

## Features

- **Plugin Manager**: lazy.nvim for fast, modern plugin management
- **Fuzzy Finding**: Telescope.nvim with fzf-native extension
- **Terminal Integration**: ToggleTerm.nvim with floating terminals
- **Fast Motion**: flash.nvim (modern EasyMotion successor)
- **File Explorer**: oil.nvim (edit directories like buffers)
- **Split Management**: smart-splits.nvim for seamless navigation
- **LSP Support**: Built-in LSP with mason for automatic server management
- **Git Integration**: gitsigns.nvim for git status and hunks
- **Theme**: Tokyo Night (with Catppuccin as alternative)

## Key Bindings

### General
- `<Space>` - Leader key
- `<Esc>` - Clear search highlighting
- `<C-h/j/k/l>` - Navigate splits
- `<S-h/l>` - Navigate buffers
- `j/k` - Move down/up respecting wrapped lines

### Telescope (Fuzzy Finding)
- `<leader>ff` - Find files
- `<leader>fg` - Live grep
- `<leader>fb` - Find buffers
- `<leader>fh` - Help tags
- `<C-p>` - Find files (familiar shortcut)

### Terminal
- `<C-\>` - Toggle floating terminal
- `<leader>tf` - Toggle floating terminal
- `<leader>th` - Toggle horizontal terminal
- `<leader>tv` - Toggle vertical terminal

### File Explorer (Oil.nvim)
- `<leader>e` - Open file explorer
- `-` - Open parent directory

### Motion (Flash.nvim)
- `s` - Flash jump
- `S` - Flash treesitter
- `<C-s>` - Toggle flash search (in command mode)

### Split Management
- `<Alt-h/j/k/l>` - Resize splits
- `<leader><leader>h/j/k/l>` - Swap buffers between splits

### LSP
- `gd` - Go to definition
- `gr` - Find references
- `K` - Hover documentation
- `<space>rn` - Rename
- `<space>ca` - Code actions
- `<space>f` - Format
- `[d` / `]d` - Navigate diagnostics

### Git (Gitsigns)
- `]c` / `[c` - Navigate hunks
- `<leader>hs` - Stage hunk
- `<leader>hr` - Reset hunk
- `<leader>hp` - Preview hunk
- `<leader>hb` - Blame line

## Installation

1. Backup existing NeoVim config:
   ```bash
   mv ~/.config/nvim ~/.config/nvim.backup
   ```

2. Clone this repository:
   ```bash
   git clone <your-repo-url> ~/.config/nvim
   ```

3. Start NeoVim and let lazy.nvim install plugins:
   ```bash
   nvim
   ```

## LSP Servers

The following LSP servers are automatically installed via mason:
- `lua_ls` - Lua
- `rust_analyzer` - Rust
- `pyright` - Python
- `tsserver` - TypeScript/JavaScript
- `gopls` - Go

## File Structure

```
~/.config/nvim/
├── init.lua                 # Main entry point
├── lua/
│   ├── config/
│   │   ├── settings.lua     # Core Neovim settings
│   │   └── keymaps.lua      # Global keymaps
│   └── plugins/             # Plugin configurations
│       ├── telescope.lua    # Fuzzy finder
│       ├── toggleterm.lua   # Terminal integration
│       ├── flash.lua        # Fast motion
│       ├── oil.lua          # File explorer
│       ├── smart-splits.lua # Split management
│       ├── lsp.lua          # LSP configuration
│       ├── completion.lua   # Autocompletion
│       ├── colorscheme.lua  # Theme configuration
│       └── gitsigns.lua     # Git integration
└── README.md               # This file
```

## Philosophy

- Leverage NeoVim's modern features (built-in LSP, Lua config)
- Keep configuration clean and maintainable
- Focus on speed and efficiency for experienced Vim users
- Maintain portability across systems