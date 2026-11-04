-- Seafile application windowrules --

hl.window_rule({
	name = "Floating Seafile",
	match = { class = "com.seafile.seafile-applet" },
	float = true,
})

hl.window_rule({
	name = "Seafile file browser size",
	match = {
		class = "com.seafile.seafile-applet",
		title = "Navigateur de fichiers",
	},
	size = "640 450",
	float = true,
	center = true,
})
