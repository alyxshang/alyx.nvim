-- Alyx.nvim by Alyx Shang.
-- Licensed under the FSL v1.

-- Spec for "catpuccin/nvim".
return {
  'catppuccin/nvim', 
  name = 'catppuccin',
  config = function()
    require('catppuccin').setup(
      {
        flavour = 'mocha'
      }
    )
    vim.cmd.colorscheme('catppuccin')
  end
}
