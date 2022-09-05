local M = {}

local function _hl_by_name(name)
	return vim.api.nvim_get_hl_by_name(name, true)
end

M.hl_by_name = function(name, prop)
	return string.format("#%06x", _hl_by_name(name)[prop])
end

M.setup_if_available = function(props)
	for k, v in pairs(props) do
		local is_available, mod = pcall(require, k)

		if is_available then
			mod.setup(v)
		end
	end
end

return M
