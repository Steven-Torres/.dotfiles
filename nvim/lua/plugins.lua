vim.cmd('packadd packer.nvim')

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'neovim/nvim-lspconfig'
	use 'nvim-telescope/telescope-file-browser.nvim'
	use 'kyazdani42/nvim-web-devicons'
	use {  'nvim-telescope/telescope-fzy-native.nvim', run = 'git submodules' }
 	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = {'nvim-lua/plenary.nvim'}
	}
 	use 'morhetz/gruvbox'
	use 'folke/tokyonight.nvim'
 	-- nvim-cmp plugins
 	use 'hrsh7th/cmp-nvim-lsp'
 	use 'hrsh7th/cmp-buffer'
 	use 'hrsh7th/cmp-path'
 	use 'hrsh7th/cmp-cmdline'
 	use 'hrsh7th/nvim-cmp'
 	-- vsnip for nvim-cmp
 	use 'hrsh7th/cmp-vsnip'
 	use 'hrsh7th/vim-vsnip'
 	-- friendly-snippets
 	use 'rafamadriz/friendly-snippets'
	--	
	use 'glepnir/dashboard-nvim'
	use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'kyazdani42/nvim-web-devicons', opt = true },
	}
	use { 'akinsho/toggleterm.nvim', tag = '*' }
end)
