local colors = require("cmyk-colourrrs.colors")
local M = {}

-- Source: https://github.com/AstroNvim/AstroNvim/blob/main/lua/core/status.lua
local function lsp_client_names(expand_null_ls)
	return function()
		local buf_client_names = {}
		for _, client in pairs(vim.lsp.buf_get_clients(0)) do
			if client.name == "null-ls" and expand_null_ls then
				vim.list_extend(buf_client_names, astronvim.null_ls_sources(vim.bo.filetype, "FORMATTING"))
				vim.list_extend(buf_client_names, astronvim.null_ls_sources(vim.bo.filetype, "DIAGNOSTICS"))
			else
				table.insert(buf_client_names, client.name)
			end
		end
		return table.concat(buf_client_names, ", ")
	end
end

-- Source: https://github.com/AstroNvim/AstroNvim/blob/main/lua/core/status.lua
local modes = {
	["n"] = { "NORMAL", "Normal", colors.grrreen },
	["no"] = { "N-PENDING", "Normal", colors.grrreen },
	["i"] = { "INSERT", "Insert", colors.hot_pink },
	["ic"] = { "INSERT", "Insert", colors.hot_pink },
	["t"] = { "TERMINAL", "Insert", colors.hot_pink },
	["v"] = { "VISUAL", "Visual", colors.cerrrulean },
	["V"] = { "V-LINE", "Visual", colors.cerrrulean },
	[""] = { "V-BLOCK", "Visual", colors.cerrrulean },
	["R"] = { "REPLACE", "Replace", colors.electric_crrrimson },
	["Rv"] = { "V-REPLACE", "Replace", colors.electric_crrrimson },
	["s"] = { "SELECT", "Visual", colors.cerrrulean },
	["S"] = { "S-LINE", "Visual", colors.cerrrulean },
	[""] = { "S-BLOCK", "Visual", colors.cerrrulean },
	["c"] = { "COMMAND", "Command", colors.purrrple },
	["cv"] = { "COMMAND", "Command", colors.purrrple },
	["ce"] = { "COMMAND", "Command", colors.purrrple },
	["r"] = { "PROMPT", "Inactive", colors.light_500 },
	["rm"] = { "MORE", "Inactive", colors.light_500 },
	["r?"] = { "CONFIRM", "Inactive", colors.light_500 },
	["!"] = { "SHELL", "Inactive", colors.light_500 },
}

local function get_vi_mode()
	return {
		provider = function()
			local current_text = " "
			return current_text
		end,
		hl = function()
			local mode_color = modes[vim.fn.mode()][3]
			return {
				fg = colors.cmyk_black,
				bg = mode_color,
				style = "bold",
			}
		end,
	}
end

local SPACERS = {
	left = "",
	mid = "▊",
	right = "",
}

local function spacer(props)
	props = vim.tbl_deep_extend(
		"force",
		{ fg = colors.cmyk_black, bg = colors.purrrple, length = 1, spacer = SPACERS.mid, enabled = true },
		props or {}
	)

	local separator = string.rep(props.spacer, props.length)

	return {
		provider = separator,
		hl = {
			fg = props.fg,
			bg = props.bg,
		},
		enabled = props.enabled,
	}
end

local left = {
	get_vi_mode(),
	spacer({ bg = colors.cmyk_black }),
	spacer({
		spacer = SPACERS.left,
		fg = colors.dark_400,
		bg = colors.cmyk_black,
		enabled = function()
			if require("feline.providers.git").git_info_exists() ~= nil then
				return true
			end
			return false
		end,
	}),
	{
		provider = "git_branch",
		hl = { fg = colors.hot_pink, bg = colors.dark_400, style = "bold" },
	},
	spacer({
		spacer = SPACERS.right,
		fg = colors.dark_400,
		bg = colors.cmyk_black,
		enabled = function()
			if require("feline.providers.git").git_info_exists() ~= nil then
				return true
			end
			return false
		end,
	}),
	{ provider = "git_diff_added", hl = { fg = colors.grrreen, bg = colors.cmyk_black }, icon = "  " },
	{
		provider = "git_diff_changed",
		hl = { fg = colors.tangerrrine, bg = colors.cmyk_black },
		icon = " 柳",
	},
	{
		provider = "git_diff_removed",
		hl = { fg = colors.electric_crrrimson, bg = colors.cmyk_black },
		icon = "  ",
	},
	spacer({ bg = colors.cmyk_black }),
}

local hl_by_name = require("cmyk-colourrrs.utils").hl_by_name
-- TODO: Conditionally make each diagnostic have separators
local middle = {
	{ " " },
	{
		provider = "diagnostic_errors",
		hl = function()
			return { fg = hl_by_name("DiagnosticError", "foreground"), bg = colors.dark_400 }
		end,
		left_sep = function()
			return SPACERS.left
		end,
	},
	{
		provider = "diagnostic_warnings",
		hl = function()
			return { fg = hl_by_name("DiagnosticWarn", "foreground"), bg = colors.dark_400 }
		end,
	},
	{
		provider = "diagnostic_hints",
		hl = function()
			return { fg = hl_by_name("DiagnosticHint", "foreground"), bg = colors.dark_400 }
		end,
	},
	{
		provider = "diagnostic_info",
		hl = function()
			return { fg = hl_by_name("DiagnosticInfo", "foreground"), bg = colors.dark_400 }
		end,
		right_sep = function()
			return SPACERS.right
		end,
	},
	{ " " },
}

local right = {
	{
		provider = lsp_client_names(true),
		hl = "StatusLine",
		icon = "   ",
	},
	spacer(),
	{
		provider = {
			name = "file_type",
			opts = {
				filetype_icon = true,
				case = "lowercase",
			},
		},
		hl = { fg = colors.light_100, bg = colors.cmyk_black },
		left_sep = " ",
	},
	spacer(),
	{
		provider = "line_percentage",
		hl = { fg = colors.light_100, bg = colors.cmyk_black },
		left_sep = " ",
	},
	spacer({ bg = colors.cmyk_black }),
	get_vi_mode(),
}

local components = {
	active = {
		left,
		middle,
		right,
	},
}

local feline = {
	disable = { filetypes = { "^NvimTree$", "^neo%-tree$", "^dashboard$", "^Outline$", "^aerial$" } },
	theme = {
		fg = colors.light_100,
		bg = colors.cmyk_black,
	},
	components = components,
}

M = feline

return M
