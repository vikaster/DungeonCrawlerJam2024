// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_color_text(_text, _color = c_black){
    draw_set_halign(fa_center);
    draw_set_valign(fa_center);
    draw_set_colour(_color);
    draw_set_font(fnt_battle_r_small);
    if(string_width > room_width){
    var _xscale = (string_width(_text) - 3) / sprite_get_width(spr_button);
	} else {
	var _xscale = (string_width(_text) + 20) / sprite_get_width(spr_button);
	}
	if(string_height > room_height){
    var _yscale = (string_height(_text) - 3) / sprite_get_width(spr_button);
	} else {
	var _yscale = (string_height(_text) + 40) / sprite_get_width(spr_button);
	}
    draw_sprite_ext(spr_button_color, 0, GUI_W - string_width(_text), GUI_H / 2, _xscale, _yscale, 0, c_white, 1);
    draw_text(GUI_W - string_width(_text), GUI_H / 2, _text);
}