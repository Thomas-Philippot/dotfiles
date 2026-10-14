-- ##############################################################
-- MY SUPER HYPRLAND CONFIG.
-- https://wiki.hypr.land/Configuring/
-- ##############################################################

-- Load a module only if its file exists.
local function optional(module)
  if package.searchpath(module, package.path) then
    require(module)
  end
end

-- Defaults (do not edit) --
require("hyprland/monitors")
require("hyprland/environments")
require("hyprland/autostart")
require("hyprland/permissions")
require("hyprland/look-and-feel")
require("hyprland/inputs")
require("hyprland/keybinds")
require("hyprland/windowrules")

-- Custom --
optional("custom/autostart")
optional("custom/monitors")
optional("custom/environments")
optional("custom/inputs")
optional("custom/keybinds")
optional("custom/windowrules")
optional("custom/workspacerules")

-- For Noctalia Color templates
require("noctalia").apply_theme()
