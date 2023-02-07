local install_path = vim.fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = vim.fn.system {
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	}
	print "installing packer... close and reopen Neovim..."
end

-- Autocommand that reloads neovim whenever you sabe the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Make a protected call to packer to make sure that it can be loaded
-- exit otherwise
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

packer.init {
	display = {
		open_fn = function()
			return require("packer.util").float { border = "rounded" }
		end
	},
}

return packer.startup(function(use)
	use "wbthomason/packer.nvim"
	use "nvim-lua/popup.nvim"
	use "nvim-lua/plenary.nvim"
	use "kyazdani42/nvim-web-devicons"

	-- Colorschemes
	use "cpea2506/one_monokai.nvim"
	use "folke/tokyonight.nvim"

	-- Completion
	use "hrsh7th/nvim-cmp" -- completion engine
	use "hrsh7th/cmp-buffer" -- completion source from buffer
	use "hrsh7th/cmp-path" -- completion source from paths
	use "saadparwaiz1/cmp_luasnip" -- completion source for snippets
	use "hrsh7th/cmp-nvim-lsp" -- completion source for lsp
	use "hrsh7th/cmp-nvim-lua" -- completion source for nvim-lua files
	use "ray-x/lsp_signature.nvim" -- show function parameters hint

	-- Snippets
	use "L3MON4D3/LuaSnip" -- snippet engine
	use "rafamadriz/friendly-snippets" -- some snippets

	-- LSPs
	use "williamboman/mason.nvim" -- simple to use language server installer
	use "williamboman/mason-lspconfig.nvim" -- recommended by mason.nvim
	use "neovim/nvim-lspconfig" -- enable LSP
	use "simrat39/rust-tools.nvim" -- setup rust analyzer
	use 'mfussenegger/nvim-dap' -- debug adapter protocol client (recommended by mason.nvim)
	use 'mfussenegger/nvim-lint' -- asynchronous linter (recommended by mason.nvim)
	use 'mhartington/formatter.nvim' -- asynchronous formatter (recommended by mason.nvim)

	-- Treesitter
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ":TSUpdate",
	}
	--use 'p00f/nvim-ts-rainbow'

	-- Autopairs
	use "windwp/nvim-autopairs"

	-- Fuzzy finder
	use {
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
	}

	-- Status line
	use "nvim-lualine/lualine.nvim"

	-- File explorer
	use { "kyazdani42/nvim-tree.lua", tag = "nightly" }

	-- Comments
	use "numToStr/Comment.nvim"

	-- Rust
	use "rust-lang/rust.vim"

	-- Flutter
	use "akinsho/flutter-tools.nvim"

	-- Golang
	use 'ray-x/go.nvim'
	use 'ray-x/guihua.lua'

	-- Git blame
	use 'APZelos/blamer.nvim'

	-- Surround
	use {
		"kylechui/nvim-surround",
		tag = "*",
	}

	use "lewis6991/gitsigns.nvim"

	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
