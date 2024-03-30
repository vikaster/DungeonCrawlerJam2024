//var _csv = load_csv("lom_landscape_example.csv");

enum e_terrain{
	plains,
	forest,
	downs,
	mountains,
	last,
}

enum e_compass{
	north,
	east,
	south,
	west,
	last,
}
terrain = [];
visual_grid = [];

var _lay_id = layer_get_id("terrain");
var _terrain_map_id = layer_tilemap_get_id(_lay_id);

global.cell_size = tilemap_get_tile_width(_terrain_map_id);

map_w = room_width div global.cell_size;
map_h = room_height div global.cell_size;

for (var yy = 0; yy < map_h; yy ++){
	for (var xx = 0; xx < map_w; xx ++){
		terrain[xx][yy] = {terrain_index : tilemap_get(_terrain_map_id, xx, yy)};	
		visual_grid[xx][yy] = terrain[xx][yy];
	}
}

show_debug_message("global.data:\n" + string(global.data))

with parActor{
	if (x < 0 || x > room_width || y < 0 || y > room_height) continue;
	show_debug_message(object_get_name(object_index))
	var _cell_x = floor(x / global.cell_size);
	var _cell_y = floor(y / global.cell_size);
	show_debug_message("_cell_x: " + string(_cell_x) + " | _cell_y: " + string(_cell_y));
	show_debug_message("other.terrain[_cell_x][_cell_y]: " + string(other.terrain[_cell_x][_cell_y]))
	other.terrain[_cell_x][_cell_y].actor = id; show_debug_message("other.terrain[_cell_x][_cell_y].actor: " + string(other.terrain[_cell_x][_cell_y].actor));
	
	show_debug_message("data_id: " + string(data_id))
	my_data = struct_get(global.data, data_id);
	if (my_data != undefined){
		show_debug_message("Found data for " + data_id + " | data: " + string(data_id) + " | sprite: " + sprite_get_name(my_data.sprite_index))
		//sprite_index = struct_get(my_data, "sprite_index");
	}else{
		show_debug_message("No data for " + object_get_name(object_index) + " at " + string(_cell_x) + "," + string(_cell_y))	
	}
}

//show_debug_message("map_w: " + string(map_w) + " | map_h: " + string(map_h) + " | array_length(terrain): " + string(array_length(terrain)))

//for (var yy = 0; yy < ds_grid_height(_csv); yy ++){
//	for (var xx = 0; xx < ds_grid_width(_csv); xx ++){
//		terrain[xx][yy] = _csv[# xx, yy];
//		visual_grid[xx][yy] = terrain[xx][yy];
//	}	
//}


//show_debug_message("w: " + string(ds_grid_width(_csv)) );
//show_debug_message("h: " + string(ds_grid_height(_csv)) );

grid_x = floor(objPlayer.x / global.cell_size)//6;
grid_y = floor(objPlayer.y / global.cell_size)//8;
visual_grid_x = grid_x;
visual_grid_y = grid_y;

terrain_that_blocks_movement = [3]; //just mountains for now

//enum e_terrain{
//	plains,
//	forest,
//	downs,
//	mountains,
//	last,
//}

terrain_string = "_*~^.";

terrain_sprites[0] = spr_terrain_0;//spr_empty;
terrain_sprites[1] = spr_terrain_1;
terrain_sprites[2] = spr_terrain_2;
terrain_sprites[3] = spr_terrain_3;
terrain_sprites[4] = spr_terrain_4;
terrain_sprites[5] = spr_keep;
terrain_sprites[6] = spr_village;
terrain_sprites[7] = spr_city;
terrain_sprites[8] = spr_fortress;
terrain_sprites[9] = spr_tower;

//visual_grid = ds_grid_create(ds_grid_width(terrain), ds_grid_height(terrain) );
//ds_grid_copy(visual_grid, terrain);

//enum e_compass{
//	north,
//	east,
//	south,
//	west,
//	last,
//}

compass_point = e_compass.north;

a_gridxy[e_compass.north, 0] = 0;
a_gridxy[e_compass.north, 1] = -1;
a_gridxy[e_compass.east, 0] = 1;
a_gridxy[e_compass.east, 1] = 0;
a_gridxy[e_compass.south, 0] = 0;
a_gridxy[e_compass.south, 1] = 1;
a_gridxy[e_compass.west, 0] = -1;
a_gridxy[e_compass.west, 1] = 0;

transition_sideways = 0; //-1 is right, 1 is left

stored_move = undefined;