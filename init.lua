-- iron is just so hard to come by, so let the more common ores make rails too
-- but not as many

minetest.register_craft({
	output = 'default:rail 6',
	recipe = {
		{'default:copper_ingot', '', 'default:copper_ingot'},
		{'default:copper_ingot', 'default:stick', 'default:copper_ingot'},
		{'default:copper_ingot', '', 'default:copper_ingot'},
	}
})

minetest.register_craft({
	output = 'default:rail 6',
	recipe = {
		{'default:tin_ingot', '', 'default:tin_ingot'},
		{'default:tin_ingot', 'default:stick', 'default:tin_ingot'},
		{'default:tin_ingot', '', 'default:tin_ingot'},
	}
})

minetest.register_craft({
	output = 'default:rail 15',
	recipe = {
		{'default:bronze_ingot', '', 'default:bronze_ingot'},
		{'default:bronze_ingot', 'default:stick', 'default:bronze_ingot'},
		{'default:bronze_ingot', '', 'default:bronze_ingot'},
	}
})
