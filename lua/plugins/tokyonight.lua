-- Alyx.nvim by Alyx Shang.
-- Licensed under the FSL v1.

-- Spec for "thesimonho/kanagawa-paper.nvim".
return {
  'thesimonho/kanagawa-paper.nvim',
  config = function()
    require("kanagawa-paper").setup({ transparent = false })
    vim.cmd.colorscheme("kanagawa-paper-ink")
  end
}
