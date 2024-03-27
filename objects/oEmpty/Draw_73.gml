draw_sprite(enemy.sprite_index, 0, enemy.x, enemy.y);
draw_sprite(spr_player, 0, player.x, player.y);

//health bar
var _perc = global.player.confidence.display/global.player.confidence.max;//0.5;
var _spr_w = sprite_get_width(spr_health_bar);
var _spr_h = sprite_get_height(spr_health_bar);

var _margin = 10;

draw_sprite(spr_health_bar_bg, 0, _margin, _margin);
draw_sprite_part(spr_health_bar, 0, 0, 0, floor(_spr_w * _perc), _spr_h, _margin + 2, _margin + 2);