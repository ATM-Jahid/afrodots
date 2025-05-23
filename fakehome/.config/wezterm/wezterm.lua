-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
--config.color_scheme = "tokyonight_storm"

-- To avoid clash with broot `cd on quit`
config.keys = {
	{
		key = "Enter",
		mods = "ALT",
		action = wezterm.action.DisableDefaultAssignment,
	},
}

config.color_scheme = "Solarized Dark Higher Contrast"
config.font_size = 9

config.window_background_opacity = 0.8
config.hide_tab_bar_if_only_one_tab = true
config.window_padding = {
	left = 3,
	right = 2,
	top = 0,
	bottom = 0,
}

config.enable_wayland = false

-- and finally, return the configuration to wezterm
return config
