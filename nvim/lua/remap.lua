vim.keymap.set('n', '<leader>cd', '<cmd>wincmd v<bar> Ex <bar> vertical resize 30<CR>')

vim.keymap.set('n', '<C-j>', '<cmd>bo vs <bar> vertical resize 70 <bar> terminal<CR>')
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]])
vim.keymap.set('t', '<C-[>', '<Esc>')
vim.keymap.set('t', '<C-h>', '<cmd>wincmd h<CR>')
vim.keymap.set('t', '<C-j>', '<cmd>wincmd j<CR>')
vim.keymap.set('t', '<C-k>', '<cmd>wincmd k<CR>')
vim.keymap.set('t', '<C-l>', '<cmd>wincmd l<CR>')

local group = vim.api.nvim_create_augroup('neovim_terminal', { clear = true })

local function attachBufToggle(autocmd)
	vim.keymap.set('n', '<C-j>', function() print(autocmd.buf) end)
end

vim.api.nvim_create_autocmd({'BufEnter', 'TermOpen'}, { command = 'startinsert', pattern = 'term://*', group = group })
vim.api.nvim_create_autocmd({'BufEnter', 'TermOpen'}, { callback = attachBufToggle, pattern = 'term://*', group = group })
vim.api.nvim_create_autocmd('TermOpen', { command = 'set nonumber norelativenumber signcolumn=no', group = group })
