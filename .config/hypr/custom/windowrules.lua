-- User-specific window rules. Loaded after hyprland/windowrules.lua.

hl.window_rule({
  name = "reaper",
  match = { class = "REAPER" },
  move = {"cursor_x-(window_w*0.5))", "(cursor_y-(window_h*0.5))"},
  float = true,
})

hl.window_rule({
  name = "reaper-title",
  match = { class = "REAPER", title = "^(menu)$" },
  no_initial_focus = true,
})