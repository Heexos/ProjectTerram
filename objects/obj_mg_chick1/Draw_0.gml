/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
draw_set_color(c_white);
draw_set_alpha(1);

if surface_exists(surface) {
	surface_set_target(surface);
	draw_clear_alpha(col_purpule, .97);
	with (mana_gem) event_perform(ev_draw, 0);
	with (obj_egg) event_perform(ev_draw, 0);
	with (obj_mg_player) event_perform(ev_draw, 0);
	surface_reset_target();
	draw_surface(surface, game_zone[0], game_zone[1]);
} else {
	surface = surface_create(game_zone[2] - game_zone[0], game_zone[3] - game_zone[1]);
}

draw_rectangle_width(game_zone[0] - width_outline / 2, game_zone[1] -  width_outline / 2, game_zone[2] +  width_outline / 2 - 1,  game_zone[3] +  width_outline / 2 - 1, width_outline, c_white);