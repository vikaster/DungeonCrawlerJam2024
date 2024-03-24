draw_set_halign(fa_center);
draw_set_font(fnt_title);
draw_set_color(c_blue);
draw_rectangle(80, room_height/2 - 32, room_width - 52, room_height/2 + 16, 0); 
draw_text_color(room_width/2 - 32, room_height/2 - 32, "Bard's Nightmare", c_white, c_white, c_white, c_white, 1);

draw_sprite(spr_tree, 0, room_width - 92, room_height - 24);

draw_set_color(c_ltgray);
draw_rectangle(64, room_height/2 - 16, room_width - 68, room_height/2 + 24, 0); 
draw_text_color(room_width/2 - 32, room_height/2 - 16, "Bard's Nightmare", c_white, c_white, c_white, c_white, 1);

draw_set_color(c_white);
draw_rectangle(48, room_height/2, room_width - 84, room_height/2 + 32, 0); 
draw_text_color(room_width/2 - 32, room_height/2, "Bard's Nightmare", c_white, c_white, c_white, c_white, 1);

draw_text_color(room_width/2 - 32, room_height/2 + 4, "Bard's Nightmare", c_white, c_white, c_white, c_white, 1);
draw_text_color(room_width/2 - 34, room_height/2 + 2, "Bard's Nightmare", c_black, c_black, c_black, c_black, 1);

