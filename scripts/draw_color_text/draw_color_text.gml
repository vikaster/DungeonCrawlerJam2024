// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_color_text(_text, _color = c_black){
    draw_set_halign(fa_right);
    draw_set_valign(fa_middle);
    draw_set_colour(_color);
    draw_set_font(fnt_battle_result);
    
    var _xscale = (string_width(_text) + 20) / sprite_get_width(spr_button);
    var _yscale = (string_height(_text) + 20) / sprite_get_width(spr_button);
    draw_sprite_ext(spr_button, 0, GUI_W / 2, GUI_H / 2, _xscale, _yscale, 0, c_white, 1);
    draw_text(GUI_W / 2, GUI_H / 2, _text);
}