local wezterm = require 'wezterm'
local act = wezterm.action

wezterm.on('update-right-status', function(window, pane)
  window:set_right_status(window:active_workspace())
end)

return {
  color_scheme = 'Gruvbox dark, medium (base16)',
  font = wezterm.font 'Hack NF',
  window_close_confirmation = "NeverPrompt", 
  initial_rows = 34, -- window height
  initial_cols = 88, --window width
  font_size = 11.0,
  hide_tab_bar_if_only_one_tab = true,
  keys = {
    { key = 'c', mods = 'CTRL', action = wezterm.action.Copy },
    { key = 'v', mods = 'CTRL', action = wezterm.action.Paste },
    -- This will create a new split at the bottom of the current term
    {
      key = 't',
      mods = 'CTRL',
      action = wezterm.action.SplitPane {
        direction = 'Down',
        size = { Percent = 5 },
      },
    },
    --This will close the current pane you are focusing in
    {
      key = 'f',
      mods = 'CTRL',
      action = wezterm.action.CloseCurrentPane { confirm = true },
    },
    --Show a list of possible actions in wezterm
    { 
      key = 'a', 
      mods = 'CTRL', 
      action = wezterm.action.ShowLauncher 
    },
    --Opens the workspace menu
    {
      key = 'w',
      mods = 'CTRL',
      action = act.ShowLauncherArgs {
        flags = 'FUZZY|WORKSPACES',
      },
    },
  },
}
