-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"


require("lazy").setup({
  spec = 
      {
     	{ "polirritmico/monokai-nightasty.nvim" },
        { "nvim-neo-tree/neo-tree.nvim" },
        { "nvim-tree/nvim-web-devicons"},
        { "MunifTanjim/nui.nvim" }, 
        { "folke/noice.nvim" },
        { "nvim-lua/plenary.nvim" },
        { "kdheepak/lazygit.nvim" },
        { "lewis6991/gitsigns.nvim" },
        { "luukvbaal/nnn.nvim" },
      }, 
    }
)
