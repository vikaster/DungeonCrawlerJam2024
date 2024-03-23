enum e_settlement_stats{
	name,
	population,
	owner,
	soldiers,
}

settlement_grid = ds_grid_create(ds_grid_width(obj_map.terrain), ds_grid_height(obj_map.terrain));

for (var yy = 0; yy < ds_grid_height(obj_map.terrain); yy ++){
	for (var xx = 0; xx < ds_grid_width(obj_map.terrain); xx ++){
		var roll = irandom(9);
		if (roll < 9) {
			obj_map.terrain[# xx, yy] = irandom(3);
			settlement_grid[# xx, yy] = noone;
		}
		else{
			obj_map.terrain[# xx, yy] = irandom_range(4, 8);
			var set = instance_create_layer(xx, yy, layer, obj_settlement);
			with set{
				stat_list = ds_list_create();
				stat_list[| e_settlement_stats.name] = choose("Upton", "Firelift", "Kingston", "Lorrich", "Aston", "Manchustry", "Londin", "Awkwards");
				stat_list[| e_settlement_stats.population] = irandom_range(100, 5000);
				stat_list[| e_settlement_stats.owner] = -1;
				var pop = stat_list[| e_settlement_stats.population];
				stat_list[| e_settlement_stats.soldiers] = choose(pop * 0.1, pop * 0.05, pop * 0.025);
			}
			settlement_grid[# xx, yy] = set;
		}
	}
}
	