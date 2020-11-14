/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
scr_draw_progress(game_zone[0] - 3, game_zone[1] - 3, game_zone[2] + 1, game_zone[3] + 1, 4, c_yellow, c_red, c_green, timer_progress, 5 * room_speed)
if surface_exists(surface) {
	surface_set_target(surface);
	draw_clear_alpha(col_purpule, .97);
	//Faire des trucs ici
	draw_sprite_part(spr_bar_fill, 0, 0, hh * (1 - anim_progress/100), ww, hh * anim_progress/100, game_zone[2] - game_zone[0] - ww,  hh * (1 - anim_progress/100));
	draw_sprite(spr_bar_outline, 0, game_zone[2] - game_zone[0] - 1, 0);
	draw_sprite_ext(spr_arrow, subim_arrow_left, .5*sprite_get_width(spr_arrow), game_zone[3] - game_zone[1] - sprite_get_height(spr_arrow) / 2, 1, 1, 180, -1, 1);
	draw_sprite(spr_arrow, subim_arrow_right, 1.5*sprite_get_width(spr_arrow), game_zone[3] - game_zone[1] - sprite_get_height(spr_arrow) / 2);
	draw_sprite(spr_marteau, subim_anim, 5, 20);
	//
	surface_reset_target();
	draw_surface(surface, game_zone[0], game_zone[1]);
} else {
	surface = surface_create(game_zone[2] - game_zone[0], game_zone[3] - game_zone[1]);
}
