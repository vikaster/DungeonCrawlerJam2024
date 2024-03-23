/*
draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_set_font(fnt_normal);
draw_text(0,0,"obj: " + string(instance_number(obj_transition_sideways)) );
//draw_text(0,0,"grid_X: " + string(grid_x) );
//draw_text(0,20,"grid_y: " + string(grid_y) );
//draw_text(0,40,"movement: " + string(movement) );


for (var yy = 0; yy < ds_grid_height(terrain); yy ++){
	for (var xx = 0; xx < ds_grid_width(terrain); xx ++){
		var draw_x = 100 + (xx * 12);
		var draw_y = (yy * 12);
		
		if (xx == grid_x && yy == grid_y){
			col = make_color_rgb(irandom(255), irandom(255), irandom(255) );
			draw_set_color(col);
		}else draw_set_colour(c_white);
		
		var num = real(string_digits(terrain[# xx, yy]));
		var char = string_char_at(terrain_string, num + 1);
		draw_text(draw_x, draw_y, char);
		
		/*
		if (xx == grid_x && yy == grid_y){
			draw_set_color(c_green);
			draw_text(draw_x, draw_y, "$");
		}
		*/
		//Draw visual grid
		/*
		if (xx == visual_grid_x && yy == visual_grid_y){
			col = make_color_rgb(irandom(255), irandom(255), irandom(255) );
			draw_set_color(col);
		}else draw_set_colour(c_white);
		
		var num = real(string_digits(visual_grid[# xx, yy]));
		var char = string_char_at(terrain_string, num + 1);
		//draw_text(draw_x + 300, draw_y, char);
		draw_text(draw_x + 300, draw_y, string(num));
		
		/*
		if (xx == visual_grid_x && yy == visual_grid_y){
			draw_set_color(c_green);
			draw_text(draw_x + 300, draw_y, "$");
		}
		
	}
}


*/
draw_sprite_ext(spr_compass, 0, display_get_gui_width() - 32, 32, 4, 4, compass_point * -90, c_white, 0.75);
//var location = obj_main.settlement_grid[# grid_x, grid_y];
//if (location != noone){
//	draw_set_halign(fa_left);
//	draw_set_valign(fa_top);
//	draw_text(20, 20, "You stand in the settlement of " + location.stat_list[| e_settlement_stats.name] + ".");
//	draw_text(20, 40, location.stat_list[| e_settlement_stats.name] + " has a population of " + string(location.stat_list[| e_settlement_stats.population]) + "." );
//	draw_text(20, 70, "This settlement serves no Lord.");
//}