/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
if cnt < 4 {
	if status == "DOWN" {
		y+=32;
	} else if status == "RIGHT" {
		x+=32;
	} else if status == "UP" {
		y-=32;
	} else if status == "LEFT" {
		x-=32;
	}
} else if cnt == 4 {
	var _nearest = instance_nearest(x, y, obj_mana_wall);
	x = _nearest.x + 16;
	y =  _nearest.y + 16;
}

if cnt == 9 {
	x = xstart;
	y = ystart;
	event_perform(ev_step, ev_step_end);
	cnt = 0; 
} else {
	cnt++
}
alarm[0]=.5*room_speed;

audio_play_sound(snd_percu2, 1, false);
if cnt%2 == 1 audio_play_sound(snd_percu1, 1, false);