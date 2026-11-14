-- Signal application windowrules --

hl.window_rule({
	name = "Floating Signal",
	match = { class = "signal" },
	size = "425 790",
	move = "(monitor_w*0.72) (monitor_h*0.15)",
	float = true,
	pin = true,
})
