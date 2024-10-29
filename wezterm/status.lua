--- @alias battery_state 'Charging' | 'Discharging' | 'Empty' | 'Full' | 'Unknown'
--- @alias battery { state: battery_state, state_of_charge: number }

local M = {}

local wezterm = require("wezterm")

local function update_right_status(window)
	-- "Wed Mar 3 08:14"
	--- @type string
	local date = wezterm.strftime("%a %b %-d %H:%M")

	--- @type string
	local tilde = wezterm.format({
		{ Foreground = { AnsiColor = "Fuchsia" } },
		{ Text = "|" },
	})

	local status = string.format("%s %s ", tilde, date)
	window:set_right_status(wezterm.format({
		{ Text = status },
	}))
end

function M.enable()
	wezterm.on("update-right-status", update_right_status)
end

return M
