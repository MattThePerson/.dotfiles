local wezterm = require("wezterm")
local config = wezterm.config_builder()
local act = wezterm.action

config.initial_cols = 120
config.initial_rows = 28
config.font_size = 12
-- config.color_scheme = 'AdventureTime'

-- keys
config.keys = {
	-- { key = ":", mod = "SUPER", action = wezterm.action.SpawnTab("CurrentPaneDomain") }, -- doesn't seem to work
}

-- alt+n tab switching
for i = 1, 9 do
	table.insert(config.keys, {
		key = tostring(i),
		mods = "ALT",
		action = act.ActivateTab(i - 1),
	})
end

return config
