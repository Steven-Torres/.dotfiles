vim.g.gruvbox_contrast_dark = 'hard'
vim.g.gruvbox_termcolors = '256'
vim.g.gruvbox_transparent_bg = '1'

vim.cmd('colorscheme gruvbox')

vim.opt.background = 'dark'

local group = vim.api.nvim_create_augroup('nvim_color', { clear = true })
vim.api.nvim_create_autocmd('VimEnter', { command = 'hi Normal ctermbg=none guibg=none', group = group })
