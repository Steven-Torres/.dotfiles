local custom_fname = require('lualine.components.filename'):extend()
local highlight = require'lualine.highlight'
local default_status_colors = { saved = '#79740E', modified = '#9D0006' }

function custom_fname:init(options)
  custom_fname.super.init(self, options)
  self.status_colors = {
	saved = highlight.create_component_highlight_group(
	  {bg = default_status_colors.saved}, 'filename_status_saved', self.options),
	modified = highlight.create_component_highlight_group(
	  {bg = default_status_colors.modified}, 'filename_status_modified', self.options),
  }
  if self.options.color == nil then self.options.color = '' end
end

function custom_fname:update_status()
  local data = custom_fname.super.update_status(self)
  local format_color = vim.bo.modified and self.status_colors.modified or self.status_colors.saved
  data = highlight.component_format_highlight(format_color) .. data
  return data
end

require('lualine').setup({
	options = { theme = 'gruvbox' },
	sections = {
		lualine_c = { custom_fname },
	},
	tabline = {
	  lualine_a = {
		  { 'tabs', mode = 2 }
	  },
	  lualine_b = {},
	  lualine_c = {},
	  lualine_x = {},
	  lualine_y = {'buffers'},
	  lualine_z = {
		{ 'filename', path = 1}
	  }
	}
})
