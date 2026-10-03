local wezterm = require("wezterm")
local config = wezterm.config_builder()
local act = wezterm.action

config.initial_cols = 120
config.initial_rows = 28
config.font_size = 12
-- config.color_scheme = 'AdventureTime'

-- keys
config.keys = {
	{ key = "Tab", mods = "CTRL", action = act.ActivateLastTab },
}

-- alt+n tab switching
for i = 1, 9 do
	table.insert(config.keys, {
		key = tostring(i),
		mods = "ALT",
		action = act.ActivateTab(i - 1),
	})
end

-- rename tab
table.insert(config.keys, {
  key = 'r',
  mods = 'CTRL|SHIFT',
  action = act.PromptInputLine {
    description = 'Rename tab:',
    action = wezterm.action_callback(function(window, pane, line)
      if line then
        window:active_tab():set_title(line)
      end
    end),
  },
})

return config
