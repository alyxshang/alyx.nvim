-- Alyx.nvim by Alyx Shang.
-- Licensed under the FSL v1.

-- Spec for "neovim/nvim-lspconfig".
return {
  'neovim/nvim-lspconfig',
  config = function()
    local lspconfig = require('lspconfig')
    lspconfig.rust_analyzer.setup {
      settings = {
        ['zls'] = {
          on_attach = on_attach,
          root_dir = lspconfig.util.root_pattern(
            "*.zig"
          )
        },
        ['dartls'] = {
          on_attach = on_attach,
          root_dir = lspconfig.util.root_pattern(
            "pubspec.yaml"
          )
        },
        ['rust-analyzer'] = {
          on_attach = on_attach,
          root_dir = lspconfig.util.root_pattern(
            "Cargo.toml"
          )
        },
	['ocamllsp'] = {
          on_attach = on_attach,
          root_dir = lspconfig.util.root_pattern(
            "*.opam",
            "dune-project"
          )
        },
	['clangd'] = {
          on_attach = on_attach,
          root_dir = lspconfig.util.root_pattern(
            "*.c",
            "*.h",
            "*.cpp",
            "*.hpp"
          )
        },
	['deno-lsp'] = {
          on_attach = on_attach,
          root_dir = lspconfig.util.root_pattern(
            "deno.json", 
	    "deno.jsonc"
	  ),
	}
      },
    }
 end
}
