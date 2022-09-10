local M = {}

local function _hl_by_name(name)
	return vim.api.nvim_get_hl_by_name(name, true)
end

M.hl_by_name = function(name, prop)
	return string.format("#%06x", _hl_by_name(name)[prop])
end

M.diagnostic_exists = function(_diagnostic)
	local diagnostics = {
		ERROR = 1,
		WARN = 2,
		INFO = 3,
		HINT = 4,
	}

	local diagnostic = diagnostics[string.upper(_diagnostic)]

	if not diagnostic then
		return false
	end

	for _, v in ipairs(vim.diagnostic.get(0)) do
		if diagnostic == v.severity then
			return true
		end
	end

	return false
end

M.tbl_diagnostics_exists = function(diagnostics)
	local exists = false
	for _, v in ipairs(diagnostics) do
		exists = M.diagnostic_exists(v) or exists
	end

	return exists
end

M.setup_if_available = function(_plugin, _mod)
	local is_available, mod = pcall(require, _plugin)

	if is_available then
		mod.setup(_mod)
	end
end

M.setup_plugins = function(opts)
	for plugin, enabled in pairs(opts.enabled_plugins) do
		if enabled then
			M.setup_if_available(plugin, require("cmyk-colourrrs.config." .. plugin))
		end
	end
end

return M
