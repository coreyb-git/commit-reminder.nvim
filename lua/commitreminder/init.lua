local config = require("commitreminder.config")

local M = {}

function M.setup(opts)
	for i, v in pairs(opts) do
		config[i] = v
	end

	if config.enabled then
		local format = "medium"
		local s = "git log -1 --date=relative --format=" .. format
		local handle = io.popen(s)
		require("notify")
		vim.notify = require("notify")
		local notifyopts = { title = "Last Commit Reminder", timeout = 5000 }
		if handle ~= nil then
			local result = handle:read("*a")
			handle:close()

			vim.notify(result, vim.log.levels.INFO, notifyopts)
		else
			vim.notify("Problem getting git result", vim.log.levels.INFO, notifyopts)
		end
	end
end

return M
