-- Alyx.nvim by Alyx Shang.
-- Licensed under the FSL v1.

-- Spec for "nvim-flutter/flutter-tools.nvim".
return {
  'nvim-flutter/flutter-tools.nvim',
  lazy = false,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'stevearc/dressing.nvim',
  },
  config = function()
    require("flutter-tools").setup()
  end
}
