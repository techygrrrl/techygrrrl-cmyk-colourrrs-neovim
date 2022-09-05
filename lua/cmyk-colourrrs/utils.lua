local M = {}

M.setup_if_available = function(props)
	for k, v in pairs(props) do
		local is_available, mod = pcall(require, k)

		if is_available then
			mod.setup(v)
		end
	end
end

return M
