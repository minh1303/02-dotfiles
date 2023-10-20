local wezterm = require 'wezterm'
local config = {}
local action = wezterm.action
config.font = wezterm.font 'JetBrains Mono'
config.color_scheme = "Catppuccin Mocha"
config.use_fancy_tab_bar = false
config.colors = {
tab_bar = {
    -- The color of the strip that goes along the top of the window
    -- (does not apply when fancy tab bar is in use)
    background = '#282738',

    -- The active tab is the one that has focus in the window
    active_tab = {
      -- The color of the background area for the tab
      bg_color = '#f4d9e1',
      -- The color of the text for the tab
      fg_color = '#000',

      -- Specify whether you want "Half", "Normal" or "Bold" intensity for the
      -- label shown for this tab.
      -- The default is "Normal"
      intensity = 'Normal',

      -- Specify whether you want "None", "Single" or "Double" underline for
      -- label shown for this tab.
      -- The default is "None"
      underline = 'None',

      -- Specify whether you want the text to be italic (true) or not (false)
      -- for this tab.  The default is false.
      italic = false,

      -- Specify whether you want the text to be rendered with strikethrough (true)
      -- or not for this tab.  The default is false.
      strikethrough = false,
    }
}}

-- key binds
config.keys = {
  {
    key = 'w',
    mods = 'CTRL',
    action = action.CloseCurrentTab { confirm = true },
  },

  {
	key = 'n',
	mods = "CTRL",
	action = action.SpawnTab 'CurrentPaneDomain'
  }
}


config.window_background_opacity = 0.8
return config
