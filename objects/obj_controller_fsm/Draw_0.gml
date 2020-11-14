/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

//Dessin de la fleche au dessus du joueur (choose_act)

if curr_state.myState == state.choose_act  {
	draw_sprite(spr_select, 0, playingPlayer.x, scr_wave(playingPlayer.y - 10, playingPlayer.y - 20, 1, 0, 0))
} else if curr_state.myState == state.defense {
	var _xx1 = curr_state.myPlayer.sprite_width;
	var _xx2  = sprite_get_width(spr_target);
	var _yy1 = curr_state.myPlayer.sprite_height;
	var _yy2  = sprite_get_height(spr_target);
	var _x1 = curr_state.myPlayer.x;
	var _y1 = curr_state.myPlayer.y;
	draw_sprite(spr_target, 0, _x1 - (_xx2 - _xx1) / 2, _y1 - (_yy2 - _yy1) * 2 / 3)
}