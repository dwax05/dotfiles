local wezterm = require("wezterm")

local font_size = 18
local bold = true
local font_family = ({
	"Iosevka Nerd Font Mono", -- [1]
	"JetBrainsMono Nerd Font", -- [2]
	"RobotoMono Nerd Font", -- [3]
})[2]

local options = {}
if bold then
	options["weight"] = "Bold"
end

local font = wezterm.font(font_family, options)

return {
	font = font,
	font_size = font_size,
}
