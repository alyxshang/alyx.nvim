-- Alyx.nvim by Alyx Shang.
-- Licensed under the FSL v1.

-- A function to setup the Nuwa
-- package manager and return
-- the module to use further
-- methods.
local function setupNuwa()
  local nuwaPath = vim.fn.stdpath("data") .. "/nuwa"
  local nuwaRepo = "https://github.com/alyxshang/nuwa.nvim.git"
  vim.fn.system(
    {
      "git", 
      "clone", 
      "--depth=1", 
      nuwaRepo,
      nuwaPath
    }
  )
  local nuwaPkgPath = vim.fn.stdpath("data") .. "/nuwaPkgs"
  vim.opt.rtp:prepend(nuwaPath)
  local nuwa = require("nuwa")
  return nuwa
end

-- A function to
-- make some basic settings.
local function setupBasics()
  vim.wo.number = true
  vim.opt.shiftwidth = 2
  vim.opt.expandtab = true
  vim.opt.softtabstop = 2
  vim.wo.relativenumber = true
  vim.opt.swapfile = false
  vim.opt.textwidth = 72
  vim.opt_local.colorcolumn = "72"
end

-- A function to install dependencies
-- for different plugins.
local function installDependencies(nuwa)

  -- Dependency for "emeraldsparrow.nvim".
  nuwa.installPackage(
    "https://github.com",
    "alyxshang",
    "guizhong.nvim"
  )

  -- Dependency for "lualine.nvim"
  -- and "bufferline.nvim".
  nuwa.installPackage(
    "https://github.com",
    "nvim-tree",
    "nvim-web-devicons"
  )

  -- Dependency for "blink.cmp".
  nuwa.installPackage(
    "https://github.com",
    "rafamadriz",
    "friendly-snippets"
  )

  -- Dependency for "noice.nvim".
  nuwa.installPackage(
    "https://github.com",
    "MunifTanjim",
    "nui.nvim"
  )

  -- Dependency for "noice.nvim".
  nuwa.installPackage(
    "https://github.com",
    "rcarriga",
    "nvim-notify"
  )

  -- Dependency for "flutter-tools.nvim".
  nuwa.installPackage(
    "https://github.com",
    "nvim-lua",
    "plenary.nvim"
  )

  -- Dependency for "flutter-tools.nvim".
  nuwa.installPackage(
    "https://github.com",
    "stevearc",
    "dressing.nvim"
  )
end

-- A function to install the 
-- plugins needed.
local function installPlugins(nuwa)
  nuwa.installPackage(
    "https://github.com",
    "akinsho",
    "bufferline.nvim"
  )
  nuwa.installPackage(
    "https://github.com",
    "nvim-lualine",
    "lualine.nvim"
  )
  nuwa.installPackage(
    "https://github.com",
    "nvim-tree",
    "nvim-tree.lua"
  )
  nuwa.installPackage(
    "https://github.com",
    "lewis6991",
    "gitsigns.nvim"
  )
  nuwa.installPackage(
    "https://github.com",
    "nvim-treesitter",
    "nvim-treesitter"
  )
  nuwa.installPackage(
    "https://github.com",
    "saghen",
    "blink.cmp"
  )
  nuwa.installPackage(
    "https://github.com",
    "folke",
    "noice.nvim"
  )
  nuwa.installPackage(
    "https://github.com",
    "neovim",
    "nvim-lspconfig"
  )
  nuwa.installPackage(
    "https://github.com",
    "folke",
    "trouble.nvim"
  )
  nuwa.installPackage(
    "https://github.com",
    "simrat39",
    "rust-tools.nvim"
  )
  nuwa.installPackage(
    "https://github.com",
    "nvim-flutter",
    "flutter-tools.nvim"
  )
end

-- A function to set and load
-- a colorscheme.
local function setupColors(nuwa)
  nuwa.installPackage(
    "https://github.com",
    "alyxshang",
    "emeraldsparrow.nvim"
  )
  require("emeraldsparrow").setup(
    { transparent = false }
  )
  vim.cmd.colorscheme("emeraldsparrow")
end

-- A function to install different
-- plugins.
local function setupPlugins(nuwa)
  nuwa.setup()
  require("nvim-web-devicons").setup()
  require("lualine").setup(
    {
      options = {
        icons_enabled = true,
        theme = "emeraldsparrow",
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        always_show_tabline = true,
        globalstatus = false,
        refresh = {
          statusline = 100,
          tabline = 100,
          winbar = 100,
        }
      },
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
      },
    }
  )
  require("bufferline").setup()
  require("nvim-tree").setup(
    {
      view = {
        side = "right"
      }
    }
  )
  require('gitsigns').setup(
    {
      signs = {
        add          = { text = '┃' },
        change       = { text = '┃' },
        delete       = { text = '_' },
        topdelete    = { text = '‾' },
        changedelete = { text = '~' },
        untracked    = { text = '┆' },
      },
      signs_staged = {
        add          = { text = '┃' },
        change       = { text = '┃' },
        delete       = { text = '_' },
        topdelete    = { text = '‾' },
        changedelete = { text = '~' },
        untracked    = { text = '┆' },
      },
      signs_staged_enable = true,
      signcolumn = true,
      numhl = false,
      linehl = false, 
      word_diff = false,
      watch_gitdir = {
        follow_files = true
      },
      auto_attach = true,
      attach_to_untracked = false,
      current_line_blame = false, 
      current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
        delay = 1000,
        ignore_whitespace = false,
        virt_text_priority = 100,
        use_focus = true,
      },
      current_line_blame_formatter = '<author>, <author_time:%R> - <summary>',
      sign_priority = 6,
      update_debounce = 100,
      status_formatter = nil, -- Use default
      max_file_length = 40000, -- Disable if file is longer than this (in lines)
      preview_config = {
        style = 'minimal',
        relative = 'cursor',
        row = 0,
        col = 1
      },
    }
  )
  require("nvim-treesitter").setup(
    {
      ensure_installed = { 
        "c", 
	"lua", 
	"zig",
	"dart",
	"rust",
	"typescript",
	"ocaml",	
	"markdown", 
	"markdown_inline"
      },
      sync_install = true,
      auto_install = true
    }
  )
  require("noice").setup(
    {
      presets = {
        bottom_search = true,
	command_palette = true,
	long_message_to_split = true,
	inc_rename = false,
	lsp_doc_border = false
      },
      cmdline = {
        format = {
	  cmdline = {
            icon = ">"
	  }
	}
      }
    }
  )
  local lspconfig = require('lspconfig')
    vim.lsp.config(
      'rust_analyzer',
      {
        settings = {
          ['rust-analyzer'] = {}
        }
      }
    )
    vim.lsp.config(
      'zls',
      {
        settings = {
          ['zls'] = {}
        }
      }
    )
    vim.lsp.config(
      'clangd',
      {
        settings = {
          ['clangd'] = {}
        }
      }
    )
    vim.lsp.config(
      'ocamllsp',
      {
        settings = {
          ['ocamllsp'] = {}
        }
      }
    )
    vim.lsp.config(
      'dartls',
      {
        settings = {
          ['dartls'] = {}
        }
      }
    )
    vim.lsp.config(
      'denols',
      {
        settings = {
          ['denols'] = {}
        }
      }
    )
    vim.lsp.config(
      'rubyls',
      {
        settings = {
          ['rubyls'] = {}
        }
      }
    )
    require("trouble").setup(
      {
        cmd = "Trouble"
      }
    )
    local rt = require("rust-tools")
    rt.setup(
      {
        server = {
        on_attach = function(_, bufnr)
          vim.keymap.set(
            "n", 
            "<C-r>", 
            rt.hover_actions.hover_actions, 
            { 
              buffer = bufnr 
            }
          )
          vim.keymap.set(
            "n", 
            "<Leader>a", 
            rt.code_action_group.code_action_group, 
            { 
              buffer = bufnr 
            }
          )
        end,
      },
    }
  )
  require("blink.cmp").setup(
    {
      opts = {
        keymap = {
          preset = 'default',
        },
        appearance = {
          nerd_font_variant = 'mono'
        },
        completion = {
          documentation = {
            auto_show = true
          } 
        },
        sources = {
          default = {
            'lsp', 
            'path', 
            'snippets', 
            'buffer' 
          },
        },
        fuzzy = { 
          implementation = "prefer_rust_with_warning" 
        }
      },
      opts_extend = { 
        "sources.default" 
      }
    }
  )
  require("flutter-tools").setup()
  require("notify").setup(
    {
      background_colour = "#10232D",
    }
  )
end

-- A function to make a few presets
-- when setting keymaps.
local function mapKey(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.keymap.set(mode, lhs, rhs, options)
end

-- A function to make different
-- keymaps.
local function setupKeyMaps()
  -- Setting the leader key.
  vim.g.mapleader = " "
  -- Remapping the escape key
  -- for "insert" mode.
  mapKey('i', '<Esc>', '<Nop>')
  mapKey('i', '<Leader>q', '<Esc>')
  -- Toggle for Telescope.
  mapKey('n', '<leader>f', ':Telescope<CR>')
  -- Toggle for "NvimTree".
  mapKey('n', '<leader>t', ':NvimTreeToggle<CR>')
  -- Toggle for the "LazyVim" plugin
  -- view.
  mapKey('n', '<leader>l', ':Lazy<CR>')
  -- Mapping for copying to the
  -- system clipboard.
  mapKey('v', '<leader>c', '"+y')
  -- Toggle for starting the
  -- LSP.
  mapKey('n', '<leader>s', ':LspStart<CR>')
  -- Disabling arrow keys
  -- in "normal" mode.
  mapKey('n', '<Up>', '<Nop>')
  mapKey('n', '<Down>', '<Nop>')
  mapKey('n', '<Left>', '<Nop>')
  mapKey('n', '<Right>', '<Nop>')
  -- Disabling arrow keys
  -- in "insert" mode.
  mapKey('i', '<Up>', '<Nop>')
  mapKey('i', '<Down>', '<Nop>')
  mapKey('i', '<Left>', '<Nop>')
  mapKey('i', '<Right>', '<Nop>')
  -- Disabling arrow keys
  -- in "visual" mode.
  mapKey('v', '<Up>', '<Nop>')
  mapKey('v', '<Down>', '<Nop>')
  mapKey('v', '<Left>', '<Nop>')
  mapKey('v', '<Right>', '<Nop>')
  -- Setting navigation in
  -- "normal" mode.
  mapKey('n', '<k>', 'k')
  mapKey('n', '<j>', 'j')
  mapKey('n', '<h>', 'h')
  mapKey('n', '<l>', 'l')
  -- Setting navigation
  -- in "insert" mode.
  mapKey('i', '<C-k>', '<Up>')
  mapKey('i', '<C-j>', '<Down>')
  mapKey('i', '<C-h>', '<Left>')
  mapKey('i', '<C-l>', '<Right>')
  -- Disabling "Ctrl+Arrow keys"
  -- in "insert" mode.
  mapKey('i', '<C-Up>', '<Nop>')
  mapKey('i', '<C-Down>', '<Nop>')
  mapKey('i', '<C-Left>', '<Nop>')
  mapKey('i', '<C-Right>', '<Nop>')
  -- Disabling "Ctrl+Arrow keys"
  -- in "visual" mode.
  mapKey('v', '<C-Up>', '<Nop>')
  mapKey('v', '<C-Down>', '<Nop>')
  mapKey('v', '<C-Left>', '<Nop>')
  mapKey('v', '<C-Right>', '<Nop>')
  -- Disabling "Ctrl+Arrow keys"
  -- in "normal" mode.
  mapKey('n', '<C-Up>', '<Nop>')
  mapKey('n', '<C-Down>', '<Nop>')
  mapKey('n', '<C-Left>', '<Nop>')
  mapKey('n', '<C-Right>', '<Nop>')
  -- Setting navigation
  -- in "visual" mode.
  mapKey('v', 'k', 'k')
  mapKey('v', 'j', 'j')
  mapKey('v', 'h', 'h')
  mapKey('v', 'l', 'l')
  -- Setting the "undo"
  -- command to "u" in
  -- "insert" mode.
  mapKey('n', 'u', ':undo<CR>')
  -- Setting the command
  -- to delete things in
  -- "normal" and "visual"
  -- modes.
  mapKey('v', 'd', 'x')
  mapKey('n', 'x', 'x')
  -- Setting the
  -- "move-to-start" command of
  -- a word keybinding for
  -- the "normal" and "visual"
  -- modes.
  mapKey('n', 'b', 'b')
  mapKey('v', 'b', 'b')
  -- Setting the "move-to-end"
  -- command of a word keybinding
  -- for the "normal" and "visual"
  -- modes.
  mapKey('n', 'e', 'e')
  mapKey('v', 'e', 'e')
  -- Setting the "move-to-start"
  -- command of a line keybinding
  -- for the "visual" and 
  -- "normal" modes.
  mapKey('n', 's', '^')
  mapKey('v', 's', '^')
  -- Setting the "move-to-end" commmand
  -- of a line keybinding for the
  -- "normal" and "visual" modes.
  mapKey('n', 't', '$')
  mapKey('v', 't', '$')
  -- Setting the
  -- "move-to-start"
  -- command
  -- of the currrent
  -- paragraph keybinding
  -- for the "visual" and
  -- "normal" modes.
  mapKey('n', 'a', '{')
  mapKey('v', 'a', '{')
  -- Setting the
  -- "move-to-end"
  -- command
  -- of the currrent
  -- paragraph keybinding
  -- for the "visual" and 
  -- "normal" modes.
  mapKey('n', 'z', '}')
  mapKey('v', 'z', '}')
  -- Setting the "move-to-start"
  -- command of the current
  -- file keybinding for the "visual"
  -- and "normal" 
  -- modes.
  mapKey('n', 'g', 'gg')
  mapKey('v', 'g', 'gg')
  -- Setting the "move-to-end" command
  -- of the current file keybinding
  -- for the "visual" and "insert" 
  -- modes.
  mapKey('n', 'm', 'G')
  mapKey('v', 'm', 'G')
  -- Setting the "move-one-forward"
  -- keybinding for the "visual" and
  -- "normal" modes.
  mapKey('n', 'w', 'w')
  mapKey('v', 'w', 'w')
  -- Setting the keybindings to
  -- switch tabs.
  mapKey('n', '<C-n>', ':bnext<CR>')
  mapKey('n', '<C-p>', ':bprev<CR>')
end

-- A main function as a
-- pseudo point of entry
-- for the Lua interpreter.
local function main()
  local nuwa = setupNuwa()
  setupBasics()
  installDependencies(nuwa)
  installPlugins(nuwa)
  setupColors(nuwa)
  setupPlugins(nuwa)
  setupKeyMaps()
end

main()
