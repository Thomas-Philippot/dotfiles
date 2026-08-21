-- Godot application windowrules --

hl.window_rule({
	name = "Resize Godot confirmation dialogs",
	match = {
		class = "org.godotengine.Editor",
		float = true,
	},
	size = { "monitor_w * 0.15", "monitor_h * 0.1" },
	center = true,
})

hl.window_rule({
    name = "Resize New node dialog",
    match = {
        class = "org.godotengine.Editor",
        title = "Créer un nouveau Node",
    },
    size = { 1000, 750 },
})

hl.window_rule({
    name = "Resize Region edit dialog",
    match = {
        class = "org.godotengine.Editor",
        title = "Éditeur de régions",
    },
    size = { 1500, 1000 },
})

hl.window_rule({
    name = "Resize Region edit dialog",
    match = {
        class = "org.godotengine.Editor",
        title = "Sélectionner une scène",
    },
    size = { 550, 450 },
})



hl.window_rule({
	name = "Floating DEBUG window",
	match = {
		class = "org.godotengine.Editor",
		title = ".*DEBUG.*",
	},
	size = { 1280, 720 },
	float = true,
	center = true,
})
