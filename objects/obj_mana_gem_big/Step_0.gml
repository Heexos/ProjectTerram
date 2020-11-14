/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
if place_meeting(x, y, obj_mg_player) {
	if collided == false {
		collided = true;
		alarm[0] = .5 * room_speed;
		snd = audio_play_sound(snd_mana_pickup,1,false);
		_player = instance_nearest(x, y, obj_mg_player).player;
	}
} else {
	if collided == true {
		collided = false;
		alarm[0] = -1;
		if audio_exists(snd) audio_stop_sound(snd);
		_player = noone;
	}
}