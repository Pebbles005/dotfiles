local M = {}

function M.custom_statusline()
	local filename = "%f"
	local filetype = "%y"
	local percentage = "%p%%"

	return string.format(" %s %%=%s %s ", filename, filetype, percentage)
end

return M
