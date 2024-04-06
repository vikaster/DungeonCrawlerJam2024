draw_set_colour(c_black);
draw_set_alpha(0.25);
draw_rectangle(1, top, 419, bottom, false);

draw_set_colour(c_blue);
draw_rectangle(left, top, right, bottom, false);

draw_set_alpha(1);

draw_set_colour(c_black);
draw_line(0, top + 16, CAM_W, bottom - 16);

draw_circle(left + 16, top + 16, difficulty, true);

draw_sprite(enemy.sprite_index, 0, enemy.x, enemy.y);
draw_sprite(spr_player, 0, player.x, player.y);

//health bar
var _perc = global.player.confidence.display/global.player.confidence.max;//0.5;
var _spr_w = sprite_get_width(spr_health_bar);
var _spr_h = sprite_get_height(spr_health_bar);

draw_sprite(spr_health_bar_bg, 0, bar.x, bar.y);
draw_sprite_part(spr_health_bar, 0, 0, 0, floor(_spr_w * _perc), _spr_h, bar.x + 2, bar.y + 2);