-- https://wiki.hypr.land/Configuring/Variables/
-- Shared defaults — do not edit. No custom/look-and-feel.lua override exists; add one if needed.

hl.config({
  general = {
    gaps_in = 5,
    gaps_out = 10,
    border_size = 2,
    resize_on_border = false,
    allow_tearing = false,
    layout = "dwindle",
  },

  decoration = {
    rounding = 12,
    active_opacity = 1.0,
    inactive_opacity = 1.0,
    shadow = {
      enabled = true,
      range = 30,
      render_power = 5,
      offset = "0 5",
      color = "rgba(00000070)",
    },
    blur = {
      enabled = false,
      size = 3,
      passes = 1,
      vibrancy = 0.1696,
    },
  },

  animations = {
    enabled = true,
  },

  dwindle = {
    preserve_split = true,
  },

  master = {
    new_status = "master",
    mfact = 0.5,
  },

  misc = {
    disable_splash_rendering = true,
    force_default_wallpaper = 0,
    disable_hyprland_logo = true,
  },

  xwayland = {
    force_zero_scaling = true,
  },
})

-- Animations: each animation is its own hl.animation() call.
-- See https://wiki.hypr.land/Configuring/Animations/
hl.animation({ leaf = "windowsIn",   enabled = true, speed = 3, bezier = "default" })
hl.animation({ leaf = "windowsOut",  enabled = true, speed = 3, bezier = "default" })
hl.animation({ leaf = "border",      enabled = true, speed = 3, bezier = "default" })
hl.animation({ leaf = "borderangle", enabled = true, speed = 3, bezier = "default" })
hl.animation({ leaf = "fade",        enabled = true, speed = 3, bezier = "default" })
hl.animation({ leaf = "workspaces",  enabled = true, speed = 5, bezier = "default" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 4, bezier = "default" })
