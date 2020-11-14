/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

// Set our shader instead of default one
shader_set(shd_outline);

// Pass our custom float parameters "pixelWidth" and "pixelHeight";
shader_set_uniform_f(pixelWidth, texelWidth);
shader_set_uniform_f(pixelHeight, texelHeight);

// Draw sprite
//draw_self();

// Set shader to default



var _scale = scr_wave(1.05, 1.15, 1.0, 0, 0);
if selected = 0 {
	draw_sprite_ext(spr_simon_attack, 0, room_width / 2, scr_wave(room_height/4 - 6, room_height/4 - 10, 1.0, 0, 0), _scale, _scale, 0, c_white, 1);
	draw_sprite_ext(spr_simon_flee, 0, room_width / 2, room_height / 4 + 4, 1, 1, 0, c_white, 1);
	draw_sprite_ext(spr_simon_item, 0, room_width / 2 - 4, room_height / 4, 1, 1, 0, c_white, 1);
	draw_sprite_ext(spr_simon_mana, 0, room_width / 2 + 4, room_height / 4, 1, 1, 0, c_white, 1);
} else if selected = 1 {
	draw_sprite_ext(spr_simon_attack, 0, room_width / 2, room_height / 4 - 4, 1, 1, 0, c_white, 1);
	draw_sprite_ext(spr_simon_flee, 0, room_width / 2, room_height / 4 + 4, 1, 1, 0, c_white, 1);
	draw_sprite_ext(spr_simon_item, 0, room_width / 2 - 4, room_height / 4, 1, 1, 0, c_white, 1);
	draw_sprite_ext(spr_simon_mana, 0, scr_wave(room_width/2 + 6, room_width/2 + 10, 1.0, 0, 0), room_height / 4, _scale, _scale, 0, c_white, 1);
} else if selected = 2 {
	draw_sprite_ext(spr_simon_attack, 0, room_width / 2, room_height / 4 - 4, 1, 1, 0, c_white, 1);
	draw_sprite_ext(spr_simon_flee, 0, room_width / 2, scr_wave(room_height/4 + 6, room_height/4 + 10, 1.0, 0, 0), _scale, _scale, 0, c_white, 1);
	draw_sprite_ext(spr_simon_item, 0, room_width / 2 - 4, room_height / 4, 1, 1, 0, c_white, 1);
	draw_sprite_ext(spr_simon_mana, 0, room_width / 2 + 4, room_height / 4, 1, 1, 0, c_white, 1);
} else if selected = 3 {
	draw_sprite_ext(spr_simon_attack, 0, room_width / 2, room_height / 4 - 4, 1, 1, 0, c_white, 1);
	draw_sprite_ext(spr_simon_flee, 0, room_width / 2, room_height / 4 + 4, 1, 1, 0, c_white, 1);
	draw_sprite_ext(spr_simon_item, 0, scr_wave(room_width/2 - 6, room_width/2 - 10, 1.0, 0, 0), room_height / 4, _scale, _scale, 0, c_white, 1);
	draw_sprite_ext(spr_simon_mana, 0, room_width / 2 + 4, room_height / 4, 1, 1, 0, c_white, 1);
} else {
	draw_sprite_ext(spr_simon_attack, 0, room_width / 2, room_height / 4 - 4, 1, 1, 0, c_white, 1);
	draw_sprite_ext(spr_simon_flee, 0, room_width / 2, room_height / 4 + 4, 1, 1, 0, c_white, 1);
	draw_sprite_ext(spr_simon_item, 0, room_width / 2 - 4, room_height / 4, 1, 1, 0, c_white, 1);
	draw_sprite_ext(spr_simon_mana, 0, room_width / 2 + 4, room_height / 4, 1, 1, 0, c_white, 1);
}

shader_reset();


