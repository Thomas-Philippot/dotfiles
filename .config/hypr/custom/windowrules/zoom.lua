-- Zoom application windowrules --

hl.window_rule({
	name = "Floating Zoom",
	match = { class = "^(zoom|Zoom|Zoom Workplace)$" },
	float = true,
})

hl.window_rule({
	name = "Zoom menus no initial focus",
	match = {
		class = "^(zoom|Zoom|Zoom Workplace)$",
		initial_title = "^(menu window|sub menu window)$",
	},
	no_initial_focus = true,
})

--hl.window_rule({
--	name = "Maximized Zoom meeting",
--	match = {
--		class = "^(zoom|Zoom)",
--		initial_title = "Réunion",
-- },
--	maximize = true,
--})
