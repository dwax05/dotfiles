local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- Spawn a fish shell in login mode
config.default_prog = { "/usr/local/bin/fish" }
