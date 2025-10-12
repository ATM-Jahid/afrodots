-- Pull in the wezterm API
local wezterm = require("wezterm")
local io = require("io")
local os = require("os")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- Open scrollback buffer with neovim
wezterm.on("trigger-nvim-with-scrollback", function(window, pane)
	local text = pane:get_lines_as_text(pane:get_dimensions().scrollback_rows)

	local tmp_file = os.tmpname()
	local f = assert(io.open(tmp_file, "w+"))
	f:write(text)
	f:flush()
	f:close()

	window:perform_action(
		wezterm.action.SpawnCommandInNewWindow({
			args = { "nvim", tmp_file },
		}),
		pane
	)
end)

config.keys = {
	{
		-- Avoid clash with broot `cd on quit`
		key = "Enter",
		mods = "ALT",
		action = wezterm.action.DisableDefaultAssignment,
	},
	{
		-- This clashes with Quick Select Mode
		key = "Space",
		mods = "CTRL|SHIFT",
		action = wezterm.action.EmitEvent("trigger-nvim-with-scrollback"),
	},
	{
		-- Remap Quick Select Mode
		key = "S",
		mods = "CTRL|SHIFT",
		action = wezterm.action.QuickSelect,
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
