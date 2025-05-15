-- Alyx.nvim by Alyx Shang.
-- Licensed under the FSL v1.

-- Spec for "neovim/nvim-lspconfig".
return {
  'neovim/nvim-lspconfig',
  config = function()
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
  end
}
