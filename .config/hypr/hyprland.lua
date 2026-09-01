-- ##############################################################
-- MY SUPER HYPRLAND CONFIG.
-- https://wiki.hypr.land/Configuring/
--
-- Do not edit files in `hyprland/` (shared defaults across all
-- users). Put any changes in the matching file under `custom/`,
-- which is loaded after and overrides the defaults.
-- ##############################################################

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
require("custom/autostart")
require("custom/monitors")
require("custom/environments")
require("custom/inputs")
require("custom/keybinds")
require("custom/windowrules")
require("custom/workspacerules")

-- For Noctalia Color templates
require("noctalia").apply_theme()
