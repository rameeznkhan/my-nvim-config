local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system {
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	}
	print "Installing packer close and reopen Neovim... "
	vim.cmd [[packadd packer.nvim]]
end

vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

packer.init {
	display = {
		open_fn = function()
			return require("packer.util").float { border = "rounded" }
		end,
	},
}

return packer.startup(function(use)
	use "wbthomason/packer.nvim"
	use "nvim-lua/popup.nvim"
	use "nvim-lua/plenary.nvim"
	-- color schemes
	use 'folke/tokyonight.nvim'
	use 'nvim-tree/nvim-web-devicons'
	use 'nvim-tree/nvim-tree.lua'
	-- cmp plugins
	-- use 'neovim/nvim-lspconfig'
	-- use 'hrsh7th/cmp-nvim-lsp'

	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'saadparwaiz1/cmp_luasnip'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-nvim-lua'

	-- snippets
	use({ "L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*" })
	use 'rafamadriz/friendly-snippets'

	-- lsp
	use 'neovim/nvim-lspconfig'
	use 'williamboman/nvim-lsp-installer'

	-- telescope
	use 'nvim-telescope/telescope.nvim'

	-- treesitter
	use { 'nvim-treesitter/nvim-treesitter',
		run = ":TSUpdate",
	}
	use "p00f/nvim-ts-rainbow"
	use "nvim-treesitter/playground"

	-- autopairs
	use "windwp/nvim-autopairs"

	-- comments
	use 'numToStr/Comment.nvim'
	use 'JoosepAlviste/nvim-ts-context-commentstring'

	-- bufferline
	use "akinsho/bufferline.nvim"
	use "moll/vim-bbye"
	--[[ gitsigns ]]
	use 'lewis6991/gitsigns.nvim'
	
	-- null lsp
        use "jose-elias-alvarez/null-ls.nvim"

        -- toggleterm
	use "akinsho/toggleterm.nvim"
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
