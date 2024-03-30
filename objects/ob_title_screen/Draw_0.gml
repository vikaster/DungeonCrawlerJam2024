draw_set_halign(fa_center);
draw_set_font(fnt_title);
draw_set_color(c_blue);
draw_rectangle(80, room_height/2 - 32, room_width - 52, room_height/2 + 16, 0); 
draw_text_color(room_width/2 - 16, room_height/2 - 32, "Bard's Nightmare", c_white, c_white, c_white, c_white, 1);
draw_set_color(c_black);
draw_set_font(fnt_normal);

draw_set_color(c_navy);
draw_rectangle(48, room_height/2, room_width - 84, room_height/2 + 32, 0); 
draw_text_color(room_width/2 - 32, room_height/2, "Rob/Pleinair/Touchek/vikaster", c_white, c_white, c_white, c_white, 1);

draw_set_halign(fa_center);
draw_set_font(fnt_normal)
draw_text_color(room_width/2 - 16, room_height - 24, "Dungeon Crawler Gam Jam 2024", c_white, c_white, c_white, c_white, 1)