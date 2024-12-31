-- pull wezterm
-- local wezterm = require("wezterm")
--
-- local config = wezterm.config_builder()
--
-- config.font = wezterm.font("FiraCode Nerd Font")
-- config.font_size = 16
--
-- config.cursor_blink_rate = 0
--
-- config.default_cursor_style = "SteadyBlock"
--
-- config.max_fps = 180
--
-- config.enable_tab_bar = false
--
-- config.window_decorations = "RESIZE"
--
-- config.window_background_opacity = 1
-- config.macos_window_background_blur = 95
--
-- config.keys = {
--   {
--     key = 'k',
--     mods = 'CMD',
--     action = wezterm.action.SendString '\x1b[33~'
--   }
-- }
--
--
-- return config



-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

config.term = "xterm-256color"

config.font_size = 16

config.enable_tab_bar = false

config.enable_wayland = true

config.window_decorations = "NONE"

config.window_background_opacity = 0.8

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

-- and finally, return the configuration to wezterm
return config
