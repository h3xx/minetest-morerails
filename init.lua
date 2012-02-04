-- More Rails
--
-- Adds the ability to craft rails from more materials.
--
-- Right now, it only supports the ores from `moreores'. Perhaps more to come.
--
-- See https://github.com/h3xx/minetest-morerails

-- Functions

local register_rail = function(type, name)
	nodename = "morerails:"..type.."_rail"
	desc = name.." Rail"
	
	tile_base    = "morerails_"..type.."_rail"
	tile_default = tile_base..".png"
	tile_curve   = tile_base.."_curved.png"
	tile_t_junct = tile_base.."_t_junction.png"
	tile_crossing= tile_base.."_crossing.png"

	material = 'moreores:'..type..'_ingot'

	-- Nodes

	minetest.register_node(nodename, {
		description = desc,
		drawtype = "raillike",
		tile_images = {tile_default, tile_curve, tile_t_junct, tile_crossing},
		inventory_image = tile_default,
		wield_image = tile_default,
		paramtype = "light",
		is_ground_content = true,
		walkable = false,
		selection_box = {
			type = "fixed",
		},
		material = minetest.digprop_dirtlike(0.75),
	})

	-- Crafting

	minetest.register_craft({
		output = nodename..' 15',
		recipe = {
			{material, '', material},
			{material, 'default:stick', material},
			{material, '', material},
		}
	})

end

register_rail('bronze', 'Bronze')
register_rail('copper', 'Copper')
register_rail('gold', 'Gold')
register_rail('silver', 'Silver')
register_rail('tin', 'Tin')
