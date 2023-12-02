# Neovim Configuration

This repository contains my personal Neovim configuration managed with Packer. 
It is structured to separate plugin configurations, key mappings, and general 
settings for an organized and maintainable setup.

## Structure

- `after/plugin`: Custom configurations for various plugins after they are loaded.

- `init.lua`: The main configuration file that Neovim loads initially.

- `lua/user`: User-specific Lua configurations.
    - `init.lua`: Entry point for user configurations.
    - `plugins.lua`: Plugin definitions and Packer configurations.
    - `remap.lua`: Key mapping configurations.
    - `set.lua`: General Neovim settings.


## Installation

To use this configuration:

1. Clone the repository into your Neovim configuration directory (typically `~/.config/nvim/`).
2. Open Neovim and run `:PackerInstall` to install the plugins.
3. Restart Neovim to apply the configurations.

## Plugins

A of the key plugins:

- **[Telescope](https://github.com/nvim-telescope/telescope.nvim)**: Enhanced 
fuzzy finding and file navigation.

- **[Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)**: 
Advanced syntax highlighting and text manipulation.

- **[LSP Zero](https://github.com/VonHeikemen/lsp-zero.nvim)**: Comprehensive 
LSP setup with dependencies like `nvim-lspconfig`, `mason.nvim`, and `nvim-cmp`
for autocompletion.

- **[Lualine](https://github.com/nvim-lualine/lualine.nvim)**: Customizable 
status line, with optional web devicons.

- **[Inlay Hints](https://github.com/simrat39/inlay-hints.nvim)**: Inline code 
hints.

- **[Nvim-Autopairs](https://github.com/windwp/nvim-autopairs)**: Auto-closing 
of brackets and quotes.
- **[Wakatime](https://github.com/wakatime/vim-wakatime)**: Coding activity 
tracking.

- **[Rose Pine Theme](https://github.com/rose-pine/neovim)**: Soothing color 
scheme.

- **[Copilot.lua](https://github.com/zbirenbaum/copilot.lua)** 
and **[copilot-cmp](https://github.com/zbirenbaum/copilot-cmp)**: Copilot integration

- **[Tint](https://github.com/levouh/tint.nvim)**: Dim inactive 
windows.

- **[Trouble](https://github.com/folke/trouble.nvim)**: Enhanced diagnostics 
and error navigation.

- **[Typst](https://github.com/kaarmu/typst.vim)**: Support for Typst language.


## Customization

Feel free to customize the configurations as per your needs. The `lua/user` 
directory is a great place to start, as it contains user-specific settings and 
plugin configurations.


