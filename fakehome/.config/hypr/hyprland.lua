-- Atomsky's hyprland config

hl.monitor({
	output = "",
	mode = "preferred",
	position = "auto",
	scale = "auto",
})

-- hl.monitor({
-- 	output = "eDP-1",
-- 	mode = "1920x1080@60",
-- 	position = "0x0",
-- 	scale = "1.5",
-- })
-- hl.monitor({
-- 	output = "HDMI-A-1",
-- 	mode = "1440x900@60",
-- 	position = "0x-900",
-- 	scale = "1",
-- })

hl.on("hyprland.start", function()
	hl.exec_cmd("waybar")
	hl.exec_cmd("swaybg -i $(find ~/Pictures/WallE -type f | shuf -n 1) -m fill")
	hl.exec_cmd("copyq --start-server hide")
	hl.exec_cmd("xrdb -load ~/.Xresources")
end)

hl.env("XCURSOR_THEME", "AC-Future")
hl.env("XCURSOR_SIZE", "40")
hl.env("HYPRCURSOR_THEME", "AC-Future")
hl.env("HYPRCURSOR_SIZE", "40")

hl.config({
	general = {
		gaps_in = 0,
		gaps_out = 0,
		border_size = 2,

		col = {
			active_border = { colors = { "rgba(f79540ee)", "rgba(b71375ee)" }, angle = 30 },
			inactive_border = "rgba(1d1f21ee)",
		},

		layout = "master",
	},

	decoration = {
		rounding = 5,

		blur = {
			enabled = true,
			size = 5,
			passes = 2,
		},

		shadow = {
			enabled = true,
			range = 12,
			render_power = 3,
			color = "rgba(1a1a1aee)",
		},
	},

	animations = {
		enabled = true,
	},
})

hl.curve("slightOut", { type = "bezier", points = { { 0.05, 0.9 }, { 0.1, 1.05 } } })

hl.animation({ leaf = "windows", enabled = true, speed = 7, bezier = "slightOut" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 7, bezier = "default", style = "popin 80%" })
hl.animation({ leaf = "border", enabled = true, speed = 10, bezier = "default" })
hl.animation({ leaf = "borderangle", enabled = true, speed = 8, bezier = "default" })
hl.animation({ leaf = "fade", enabled = true, speed = 7, bezier = "default" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 6, bezier = "default", style = "slidevert" })

hl.config({
	master = {
		mfact = 0.53,
		new_status = "slave",
	},
})

hl.config({
	dwindle = {
		preserve_split = true,
	},
})

hl.config({
	scrolling = {
		fullscreen_on_one_column = true,
	},
})

hl.window_rule({
	name = "nsxiv",
	match = { class = "^(Nsxiv)$" },
	tile = true,
})

hl.window_rule({
	name = "copyq",
	match = { class = "^(.*)(copyq)$" },
	float = true,
	size = { "monitor_w/2", "monitor_h*4/5" },
	center = true,
})

hl.config({
	xwayland = {
		force_zero_scaling = true,
	},
})

hl.config({
	misc = {
		disable_hyprland_logo = true,
	},
})

hl.config({
	input = {
		kb_layout = "us",
		kb_variant = "",
		kb_model = "",
		kb_options = "",
		kb_rules = "",

		follow_mouse = 1,
		repeat_rate = 60,
		repeat_delay = 350,

		sensitivity = 0,

		touchpad = {
			natural_scroll = false,
		},
	},
})

hl.gesture({
	fingers = 3,
	direction = "vertical",
	action = "workspace",
})

-- hl.gesture({
-- 	fingers = 2,
-- 	direction = "pinch",
-- 	action = "cursorZoom",
-- 	zoom_level = 1,
-- 	mode = "live",
-- })

local mainMod = "SUPER"

hl.bind(mainMod .. " + U", hl.dsp.exec_cmd("foot"))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd("foot broot"))
hl.bind(mainMod .. " + return", hl.dsp.exec_cmd("kitty -1"))
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd("firefox"))
hl.bind(mainMod .. " + Space", hl.dsp.exec_cmd("fuzzel"))
hl.bind(mainMod .. " + C", hl.dsp.exec_cmd("copyq show"))
hl.bind("print", hl.dsp.exec_cmd("~/.config/hypr/scrshot.sh"))

hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + ALT + Q", hl.dsp.exit())

hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen())
hl.bind(mainMod .. " + V", hl.dsp.window.float())

hl.bind(mainMod .. " + A", hl.dsp.layout("addmaster"))
hl.bind(mainMod .. " + R", hl.dsp.layout("removemaster"))
hl.bind(mainMod .. " + O", hl.dsp.layout("orientationnext"))
hl.bind(mainMod .. " + P", hl.dsp.layout("orientationprev"))

local directions = {
	H = "l",
	J = "d",
	K = "u",
	L = "r",
}

for key, dir in pairs(directions) do
	hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ direction = dir }))
	hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ direction = dir }))
end

for i = 1, 10 do
	local key = i % 10
	hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
	hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i, follow = false }))
end

hl.bind(mainMod .. " + S", hl.dsp.workspace.toggle_special("special"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special" }))

hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

local resize_map = {
	H = { x = -10 },
	J = { y = 10 },
	K = { y = -10 },
	L = { x = 10 },
}

for key, coords in pairs(resize_map) do
	local args = {
		x = coords.x or 0,
		y = coords.y or 0,
		relative = true,
	}
	hl.bind(mainMod .. " + ALT + " .. key, hl.dsp.window.resize(args), { repeating = true })
end

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

hl.bind("XF86AudioMute", hl.dsp.exec_cmd("pamixer -t"))
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("pamixer -i 3"), { repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("pamixer -d 3"), { repeating = true })

hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl s +5%"), { repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl s 5%-"), { repeating = true })
