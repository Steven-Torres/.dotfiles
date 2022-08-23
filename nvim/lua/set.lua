vim.opt.guicursor = ''

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.scrolloff = 8
vim.opt.incsearch = true
vim.opt.signcolumn = 'yes'
vim.opt.hlsearch = false
vim.opt.termguicolors = true
vim.opt.swapfile = false

vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }

if vim.fn.executable('pwsh') then
	vim.opt.shell = 'pwsh'
else
	vim.opt.shell = 'powershell'
end

vim.opt.shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;'
vim.opt.shellredir = '-RedirectStandardOutput %s -NoNewWindow -Wait'
vim.opt.shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
vim.opt.shellquote = 'shellxquote='


vim.opt.clipboard = 'unnamedplus'
-- for background terminals
vim.opt.hidden = true

vim.g.markdown_fenced_languages = {
	'ts=typescript'
}
vim.g.netrw_banner = 0
vim.g.mapleader = ' '
