require('nvim-treesitter.install').compilers = { 'clang' }
require('nvim-treesitter.configs').setup {
	ensure_installed = 'all',
	auto_install = true,
	sync_install = false,
	highlight = {
		enable = true
	},
	indentation = {
		enable = true
	}
}
