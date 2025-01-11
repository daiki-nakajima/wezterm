local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

----------------------------------------------------
-- config
----------------------------------------------------
-- config.default_domain = 'local' -- WSL:Ubuntu
config.default_cwd = "C:/dev"
config.hide_tab_bar_if_only_one_tab = false
config.use_ime = true
config.color_scheme = 'nord'
config.font = wezterm.font("Ricty Diminished")
config.font_size = 12
config.window_decorations = "RESIZE"
config.window_close_confirmation = 'AlwaysPrompt'
config.enable_scroll_bar = true
config.initial_rows = 36
config.initial_cols = 120
config.default_cursor_style = 'SteadyBlock'

----------------------------------------------------
-- keybinds
----------------------------------------------------
config.disable_default_key_bindings = true
config.keys = require("keybinds").keys
config.key_tables = require("keybinds").key_tables
config.leader = { key = "a", mods = "CTRL", timeout_milliseconds = 2000 }
config.colors = { compose_cursor = 'orange' }

----------------------------------------------------
-- launch_menu
----------------------------------------------------
config.launch_menu = require("launch_menu").launch_menu

return config
