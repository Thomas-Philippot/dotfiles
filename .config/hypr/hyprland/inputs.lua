-- https://wiki.hypr.land/Configuring/Variables/#input
-- Shared defaults — do not edit. Add user-specific input config in custom/inputs.lua.

hl.config({
  input = {
    kb_layout = "fr",
    kb_variant = "",
    kb_model = "",
    kb_options = "",
    kb_rules = "",
    follow_mouse = 1,
    sensitivity = 0,
    touchpad = {
      natural_scroll = false,
    },
  },
})

-- https://wiki.hypr.land/Configuring/Gestures
hl.gesture({ fingers = 3, direction = "horizontal", action = "workspace" })
