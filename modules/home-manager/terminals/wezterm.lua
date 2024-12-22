-- pull wezterm
local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font = wezterm.font("FiraCode Nerd Font")
config.font_size = 16
config.color_scheme = "Rosé Pine Moon (Gogh)"

config.cursor_blink_rate = 0

config.default_cursor_style = "SteadyBlock"

config.max_fps = 180

config.enable_tab_bar = false

config.window_decorations = "RESIZE"

config.window_background_opacity = 1
config.macos_window_background_blur = 95

-- config.keys = {
--   {
--     key = 'k',
--     mods = 'CMD',
--     action = wezterm.action.SendString '\x1b[33~'
--   }
-- }


return config
