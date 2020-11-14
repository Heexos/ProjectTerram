/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
draw_set_color(c_white);
draw_set_alpha(1);

if surface_exists(surface) {
	surface_set_target(surface);
	draw_clear_alpha(col_purpule, 1);

	with (obj_mg_mana) event_perform(ev_draw, 0);
	gpu_set_colourwriteenable(false, false, false, true);
	draw_set_alpha(.98);
	draw_set_colour(c_black);
	draw_rectangle(0, 0, game_zone[2] - game_zone[0], game_zone[3] - game_zone[1], false);
	gpu_set_colourwriteenable(true, true, true, true);
	with (obj_cell) event_perform(ev_draw, 0);
	with (obj_mana_player) event_perform(ev_draw, 0);
	surface_reset_target();
	draw_surface(surface, game_zone[0], game_zone[1]);
} else {
	surface = surface_create(game_zone[2] - game_zone[0], game_zone[3] - game_zone[1]);
}

draw_rectangle_width(game_zone[0] - width_outline / 2, game_zone[1] -  width_outline / 2, game_zone[2] +  width_outline / 2 - 1,  game_zone[3] +  width_outline / 2 - 1, width_outline, c_white);