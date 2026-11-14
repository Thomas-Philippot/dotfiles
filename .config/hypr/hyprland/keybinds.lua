-- https://wiki.hypr.land/Configuring/Binds/
-- Shared defaults — do not edit. Add user-specific keybindings in custom/keybinds.lua.

local mainMod = "SUPER"
local terminal = "kitty"
local fileMgr = "nautilus"
local ipc = "noctalia msg"

hl.bind("CTRL + ALT + T", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + C", hl.dsp.window.close())
hl.bind(mainMod .. " + M", hl.dsp.exit())
hl.bind(mainMod .. " + F", hl.dsp.exec_cmd(fileMgr))
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + CTRL + F", hl.dsp.window.fullscreen({ mode = "fullscreen", state = "toggle" }))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + U", hl.dsp.layout("togglesplit"))
hl.bind(mainMod .. " + H", hl.dsp.layout("swapsplit"))

-- Focus: arrow keys + IJKL, plus SHIFT to move active window
for _, m in ipairs({
	{ "left", "l" },
	{ "right", "r" },
	{ "up", "u" },
	{ "down", "d" },
	{ "J", "l" },
	{ "L", "r" },
	{ "I", "u" },
	{ "K", "d" },
}) do
	hl.bind(mainMod .. " + " .. m[1], hl.dsp.focus({ direction = m[2] }))
	hl.bind(mainMod .. " + SHIFT + " .. m[1], hl.dsp.window.move({ direction = m[2] }))
end

-- Workspaces 1..10: digit + AZERTY keysym, plus SHIFT to move active window
local azerty = {
	"ampersand",
	"eacute",
	"quotedbl",
	"apostrophe",
	"parenleft",
	"minus",
	"egrave",
	"underscore",
	"ccedilla",
	"agrave",
}
for i = 1, 10 do
	local digit = (i == 10) and "0" or tostring(i)
	hl.bind(mainMod .. " + " .. digit, hl.dsp.focus({ workspace = i }))
	hl.bind(mainMod .. " + " .. azerty[i], hl.dsp.focus({ workspace = i }))
	hl.bind(mainMod .. " + SHIFT + " .. azerty[i], hl.dsp.window.move({ workspace = i }))
end

-- Mouse scroll between workspaces
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Mouse drag / resize
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

hl.bind("XF86Calculator", hl.dsp.exec_cmd("gnome-calculator"))

-- Noctalia IPC
hl.bind(mainMod .. " + SPACE", hl.dsp.exec_cmd(ipc .. " panel-toggle launcher"))
hl.bind(mainMod .. " + S", hl.dsp.exec_cmd(ipc .. " panel-toggle control-center"))
hl.bind(mainMod .. " + T", hl.dsp.exec_cmd(ipc .. " theme-mode-toggle"))
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd(ipc .. " panel-toggle noctalia/wallhaven:browser"))
hl.bind(mainMod .. " + Escape", hl.dsp.exec_cmd(ipc .. " session lock"))
hl.bind("switch:Lid Switch", hl.dsp.exec_cmd(ipc .. " session lock"), { locked = true })
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(ipc .. " plugin noctalia/screen_recorder:service all toggle"))
hl.bind("Print", hl.dsp.exec_cmd(ipc .. " screenshot-region"), { locked = true })
hl.bind("CTRL + Print", hl.dsp.exec_cmd(ipc .. " screenshot-fullscreen pick"))

-- volume / brightness keys
for _, b in ipairs({
	{ "XF86AudioRaiseVolume", "volume-up" },
	{ "XF86AudioLowerVolume", "volume-down" },
	{ "XF86AudioMute", "volume-mute" },
	{ "XF86AudioMicMute", "mic-mute" },
	{ "XF86MonBrightnessUp", "brightness-up" },
	{ "XF86MonBrightnessDown", "brightness-down" },
}) do
	hl.bind(b[1], hl.dsp.exec_cmd(ipc .. " " .. b[2]), { locked = true, repeating = true })
end

-- media keys
for _, b in ipairs({
	{ "XF86AudioNext", "media next" },
	{ "XF86AudioPause", "media toggle" },
	{ "XF86AudioPlay", "media toggle" },
	{ "XF86AudioPrev", "media previous" },
}) do
	hl.bind(b[1], hl.dsp.exec_cmd(ipc .. " " .. b[2]), { locked = true })
end
