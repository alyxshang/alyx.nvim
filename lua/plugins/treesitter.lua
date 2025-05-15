-- Alyx.nvim by Alyx Shang.
-- Licensed under the FSL v1.

-- Spec for "nvim-treesitter/nvim-treesitter".
return {
  'nvim-treesitter/nvim-treesitter',
  config = function()
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
 end
}
