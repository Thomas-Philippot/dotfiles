-- ##############################################################
-- MY SUPER HYPRLAND CONFIG.
-- https://wiki.hypr.land/Configuring/
--
-- Do not edit files in `hyprland/` (shared defaults across all
-- users). Put any changes in the matching file under `custom/`,
-- which is loaded after and overrides the defaults.
--
-- `custom/*.lua` files are machine-specific and ignored by git.
-- Create one by copying its template: cp custom/X.example custom/X.lua
-- Missing custom files are simply skipped.
-- ##############################################################

-- Load a module only if its file exists (errors inside it still surface).
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
