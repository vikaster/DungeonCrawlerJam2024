draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_colour(c_black);
draw_set_font(fnt_text_small);	

var _sep = font_get_size(fnt_text_small) * 1.5;
var _w = GUI_W * 0.8;
	
var _xscale = (string_width_ext(text[text_index], _sep, _w) + 20) / sprite_get_width(spr_button_dont_change);
var _yscale = (string_height_ext(text[text_index], _sep, _w) + 20) / sprite_get_width(spr_button_dont_change);
draw_sprite_ext(spr_button_dont_change, 0, GUI_W / 2, GUI_H / 2, _xscale, _yscale, 0, c_white, 1);

draw_text_ext(GUI_W / 2, GUI_H / 2, text[text_index], _sep, _w);
//draw_text(GUI_W / 2, GUI_H / 2, text[text_index]);