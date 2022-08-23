require('telescope').setup({
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        }
    }
})

require('telescope').load_extension('fzy_native')
require('telescope').load_extension('file_browser')

-- keymaps

vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
vim.keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<cr>')
vim.keymap.set('n', '<leader>fh', '<cmd>Telescope help_tags<cr>')
vim.keymap.set('n', '<leader>fl', function()
  local opts = {}
  opts.cwd = vim.lsp.get_active_clients()[1].config.root_dir
  require('telescope.builtin').find_files(opts)
end)
vim.keymap.set('n', '<leader>fb', ':Telescope file_browser<cr>', { noremap = true })
