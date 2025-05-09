-- Alyx.nvim by Alyx Shang.
-- Licensed under the FSL v1.

-- Spec for "folke/which-key.nvim".
return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  config = function()
    require("which-key").setup()
  end
}
