local wezterm = require 'wezterm'
local act = wezterm.action

wezterm.on('update-right-status', function(window, pane)
  window:set_right_status(window:active_workspace())
end)

return {
  color_scheme = 'tokyonight',
  font = wezterm.font 'Hack NF',
  enable_scroll_bar = false,
  window_padding = {left = 0, right = 0, top = 0, bottom = 0,},
  window_close_confirmation = "NeverPrompt",
  initial_rows = 34, -- window height
  initial_cols = 88, --window width
  font_size = 11.0,
  hide_tab_bar_if_only_one_tab = true,
  background = {
    {
      source = { File = 'C:/Users/MSDR1/.config/wezterm/background.jpg',},
      width = '100%',
      hsb = {brightness = 0.03}, --background brightness
      opacity = 1,
    },
  },
  keys = {
    { key = 'c', mods = 'CTRL', action = wezterm.action.Copy },
    { key = 'v', mods = 'CTRL', action = wezterm.action.Paste },
    --Show a list of possible actions in wezterm
    {
      key = 'a',
      mods = 'CTRL',
      action = act.ShowLauncher
    },
    --Opens the workspace menu
    {
      key = 'w',
      mods = 'CTRL',
      action = act.ShowLauncherArgs {
        flags = 'FUZZY|WORKSPACES',
      },
    },
    -- {
    --   key = 'LeftArrow',
    --   mods = 'CTRL',
    --   action = act.ActivatePaneDirection 'Left',
    -- },
    -- {
    --   key = 'RightArrow',
    --   mods = 'CTRL',
    --   action = act.ActivatePaneDirection 'Right',
    -- },
    -- {
    --   key = 'UpArrow',
    --   mods = 'CTRL',
    --   action = act.ActivatePaneDirection 'Up',
    -- },
    -- {
    --   key = 'DownArrow',
    --   mods = 'CTRL',
    --   action = act.ActivatePaneDirection 'Down',
    -- },
    -- -- This will create a new split at the bottom of the current term
    -- {
    --   key = 't',
    --   mods = 'CTRL',
    --   action = act.SplitPane {
    --     direction = 'Down',
    --     size = { Percent = 5 },
    --   },
    -- },
    -- --This will close the current pane you are focusing in
    -- {
    --   key = 'f',
    --   mods = 'CTRL',
    --   action = act.CloseCurrentPane { confirm = true },
    -- },
  },
}
