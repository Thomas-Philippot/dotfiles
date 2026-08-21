-- https://wiki.hypr.land/Configuring/Autostart/
-- Shared defaults — do not edit. Add user-specific autostart in custom/autostart.lua.

hl.on("hyprland.start", function()
  hl.exec_cmd("noctalia")
end)
