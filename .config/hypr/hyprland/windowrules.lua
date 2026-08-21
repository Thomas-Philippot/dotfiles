-- https://wiki.hypr.land/Configuring/Window-Rules/
-- Shared defaults — do not edit. Add user-specific window rules in custom/windowrules.lua.

hl.window_rule({
	name = "floating-window",
	match = { class = "(Imprimer l'image|org.gnome.Calculator|org.gnome.Loupe)" },
	float = true,
})

hl.window_rule({
	name = "kitty-term",
	match = { class = "kitty" },
	size = "(monitor_w*0.50) (monitor_h*0.47)",
	float = true,
	center = true,
})

hl.window_rule({
	name = "floating-messages",
	match = { class = "(signal|org.telegram.desktop)" },
    size = "(monitor_w*0.25) (monitor_h*0.7)",
	move = "(monitor_w*0.72) (monitor_h*0.15)",
	float = true,
	pin = true,
})

hl.window_rule({
	name = "filesystems",
	match = { class = "DevTools|Tous les fichiers|org.gnome.Nautilus" },
	float = true,
	center = true,
	size = "(monitor_w*0.48) (monitor_h*0.5)",
})

hl.window_rule({
	name = "pip",
	match = { class = "zen", title = "Picture-in-Picture" },
	center = true,
	size = "1280 720",
	float = true,
	pin = true,
})
