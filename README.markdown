# ALYX.NVIM :dragon_face: :black_heart: :woman_technologist:

***My Neovim Config. :dragon_face: :black_heart: :woman_technologist:***

## ABOUT :books:

This repository contains the source code in Lua for my Neovim setup.
If you want to use this config as a basis for your own Neovim config,
you can do so by cloning this repository into your Neovim configuration
directory with the following command:

```bash
git clone https://github.com/alyxshang/alyx.nvim ~/.config/nvim
```

My config is glam and girly. :nail_care: :sparkles:

## INFO :gear:

My configuration uses the following plugins:

- [`neovim/nvim-lspconfig`](https://github.com/neovim/nvim-lspconfig): A
  plugin to use language servers for different languages.
- [`nvim-lualine/lualine.nvim`](https://github.com/nvim-lualine/lualine.nvim): A plugin to have a pretty status line.
  - Depends: [`nvim-tree/nvim-web-devicons`](https://github.com/nvim-tree/nvim-web-devicons)
- [`folke/noice.nvim`](https://github.com/folke/noice.nvim): A plugin to
  have a pretty command line and pretty messages.
  - Depends: [`MunifTanjim/nui.nvim`](https://github.com/MunifTanjim/nui.nvim)
  - Depends: [`rcarriga/nvim-notify`](https://github.com/rcarriga/nvim-notify)
- [`nvim-telescope/telescope.nvim`](https://github.com/nvim-telescope/telescope.nvim): A plugin to have a file finder
  present.
  - Depends: [`nvim-lua/plenary.nvim`](https://github.com/nvim-lua/plenary.nvim)
- [`alyxshang/shelley.nvim`](https://github.com/rktjmp/lush.nvim): A plugin for running shell commands from the Neovim command prompt.
- [`nvim-tree/nvim-tree.lua`](https://github.com/nvim-tree/nvim-tree.lua): A plugin to see one's project files.
- [`nvim-treesitter/nvim-treesitter`](https://github.com/nvim-treesitter/nvim-treesitter): A plugin to add syntax highlighting for different programming languages.
- [`folke/which-key.nvim`](https://github.com/folke/which-key.nvim): A plugin for helping me remember my keymaps.
- [`simrat39/rust-tools.nvim`](https://github.com/simrat39/rust-tools.nvim): A plugin for Rust-related LSP functionality.
- [`saghen/blink.cmp`](https://github.com/saghen/blink.cmp): A plugin for autocompletions.
  - Depends: [`rafamadriz/friendly-snippets`](https://github.com/rafamadriz/friendly-snippets)
- [`nvim-flutter/flutter-tools.nvim`](https://github.com/nvim-flutter/flutter-tools.nvim): LSP tooling for Flutter.
  - Depends: [`nvim-lua/plenary.nvim`](https://github.com/nvim-lua/plenary.nvim)
  - Depends: [`stevearc/dressing.nvim`](https://github.com/stevearc/dressing.nvim)
- [`folke/trouble.nvim`](https://github.com/folke/trouble.nvim): A plugin for highlighting different items.
- [`akinsho/bufferline.nvim`](https://github.com/akinsho/bufferline.nvim): A plugin for showing files as tabs.
  - Depends: [`nvim-tree/nvim-web-devicons`](https://github.com/nvim-tree/nvim-web-devicons)
- [`alyxshang/sakuramaiden.nvim`](https://github.com/alyxshang/sakuramaiden.nvim): A beautiful colorscheme for calming one inspired by Yae Miko.
  - Depends: [`alyxshang/guizhong.nvim`](https://github.com/alyxshang/guizhong.nvim)

## KEY MAPPINGS :keyboard:

To view the configured keymaps, please view my keymap configuration
[here](lua/config/keymaps.lua).

## NOTE :scroll:

- *Alyx.nvim :dragon_face: :black_heart: :woman_technologist:* by *Alyx Shang :black_heart:*.
- Licensed under the [FSL v1](https://github.com/alyxshang/fair-software-license).
