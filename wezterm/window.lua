local path = require("path")

local use_background_image = false

local padding = 8
local window_padding = {
	left = padding,
	right = padding,
	top = padding,
	bottom = padding,
}

local M = {
	window_padding = window_padding,
	window_decorations = "RESIZE",
	window_background_image_hsb = {
		brightness = 0.05,
	},
	adjust_window_size_when_changing_font_size = false,

	window_close_confirmation = "NeverPrompt",
}

if use_background_image then
	M.window_background_image = path.config .. "/background.png"
end

return M
