draw_sprite(enemy.sprite_index, 0, enemy.x, enemy.y);
draw_sprite(spr_player, 0, player.x, player.y);

//health bar
var _perc = 0.5;
var _spr_w = sprite_get_width(spr_health_bar);
var _spr_h = sprite_get_height(spr_health_bar);

draw_sprite(spr_health_bar_bg, 0, 10, 10);
draw_sprite_part(spr_health_bar, 0, 0, 0, (_spr_w * _perc), _spr_h, 10, 10);