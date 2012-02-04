-- iron is just so hard to come by, so let the more common ores make rails too
-- but not as many

minetest.register_craft({
	output = 'default:rail 6',
	recipe = {
		{'moreores:copper_ingot', '', 'moreores:copper_ingot'},
		{'moreores:copper_ingot', 'default:stick', 'moreores:copper_ingot'},
		{'moreores:copper_ingot', '', 'moreores:copper_ingot'},
	}
})

minetest.register_craft({
	output = 'default:rail 6',
	recipe = {
		{'moreores:tin_ingot', '', 'moreores:tin_ingot'},
		{'moreores:tin_ingot', 'default:stick', 'moreores:tin_ingot'},
		{'moreores:tin_ingot', '', 'moreores:tin_ingot'},
	}
})

minetest.register_craft({
	output = 'default:rail 15',
	recipe = {
		{'moreores:bronze_ingot', '', 'moreores:bronze_ingot'},
		{'moreores:bronze_ingot', 'default:stick', 'moreores:bronze_ingot'},
		{'moreores:bronze_ingot', '', 'moreores:bronze_ingot'},
	}
})
