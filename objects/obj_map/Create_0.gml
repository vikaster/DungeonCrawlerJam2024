terrain = load_csv("lom_landscape_example.csv");

show_debug_message("w: " + string(ds_grid_width(terrain)) );
show_debug_message("h: " + string(ds_grid_height(terrain)) );

grid_x = 6;
grid_y = 8;
visual_grid_x = grid_x;
visual_grid_y = grid_y;

enum e_terrain{
	plains,
	forest,
	downs,
	mountains,
	last,
}

terrain_string = "_*~^.";

terrain_sprites[0] = spr_empty;
terrain_sprites[1] = spr_forest;
terrain_sprites[2] = spr_downs;
terrain_sprites[3] = spr_mountain;
terrain_sprites[4] = spr_citadel;
terrain_sprites[5] = spr_keep;
terrain_sprites[6] = spr_village;
terrain_sprites[7] = spr_city;
terrain_sprites[8] = spr_fortress;
terrain_sprites[9] = spr_tower;

visual_grid = ds_grid_create(ds_grid_width(terrain), ds_grid_height(terrain) );
ds_grid_copy(visual_grid, terrain);

enum e_compass{
	north,
	east,
	south,
	west,
	last,
}

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