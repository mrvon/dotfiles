local wezterm = require "wezterm"

local config = wezterm.config_builder()

config.initial_cols = 120
config.initial_rows = 28
config.font_size = 14
config.font = wezterm.font("Monaco Nerd Font", {weight = "Regular", italic = false})
-- config.window_decorations = "NONE"
config.hide_tab_bar_if_only_one_tab = true
config.color_scheme = "Arthur"

config.keys = {
    {
        key = "F11",
        action = wezterm.action.ToggleFullScreen,
    },
}

return config
