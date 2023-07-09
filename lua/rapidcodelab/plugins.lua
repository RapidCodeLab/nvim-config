	local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

local plugins = {
	{
	"folke/tokyonight.nvim",
	lazy=false,
	prority=1000,
	opts={},
	},
	{
	"nvim-neo-tree/neo-tree.nvim",
	branch="v2.x",
	dependencies={
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
		"s1n7ax/nvim-window-picker",
	},
	},
	{
	"rebelot/heirline.nvim",
	lazy=false,
	config = function()
	  require("heirline").setup({
	    statusline = {},
	    winbar = {},
	    tabline = {},
	    statuscolumn = {},
	  })
	end},
	{
	"nvim-treesitter/nvim-treesitter"
	},
}
local opts = {}

require("lazy").setup(plugins, opts)
