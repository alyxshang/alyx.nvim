-- Alyx.nvim by Alyx Shang.
-- Licensed under the FSL v1.

-- Setting up "LazyVim".
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system(
    {
      "git", 
      "clone", 
      "--filter=blob:none", 
      "--branch=stable", 
      lazyrepo, 
      lazypath 
    }
  )
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo(
      {
        { 
          "Failed to clone lazy.nvim:\n", 
          "ErrorMsg"
        },
        {
          out,
          "WarningMsg"
        },
        {
          "\nPress any key to exit..."
        },
      }, 
      true, 
      {}
    )
    vim.fn.getchar()
    os.exit(1)
  end
end

-- Prepending the path
-- to "LazyVim".
vim.opt.rtp:prepend(lazypath)

-- Running "LazyVim".
require("lazy").setup("plugins")
