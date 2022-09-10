local colors = require("cmyk-colourrrs.colors")
local M = {}

M.options = {
	offsets = {
		{ filetype = "NvimTree", text = "", padding = 1 },
		{ filetype = "neo-tree", text = "", padding = 1 },
		{ filetype = "Outline", text = "", padding = 1 },
	},
	show_close_icon = true,
	left_trunc_marker = "",
	right_trunc_marker = "",
	max_name_length = 14,
	max_prefix_length = 13,
	tab_size = 20,
	show_tab_indicators = true,
	enforce_regular_tabs = false,
	view = "multiwindow",
	show_buffer_close_icons = true,
	separator_style = "thin",
	always_show_bufferline = true,
	diagnostics = false,
}

M.highlights = {
	fill = { bg = colors.cmyk_black },
	modified = { fg = colors.tangerrrine },
	modified_visible = { fg = colors.tangerrrine },
	modified_selected = { fg = colors.tangerrrine },
	close_button = { fg = colors.hot_pink },
	close_button_visible = { fg = colors.hot_pink },
	close_button_selected = { fg = colors.hot_pink },
	tab_close = { fg = colors.hot_pink, bg = colors.cmyk_black },
}

return M
