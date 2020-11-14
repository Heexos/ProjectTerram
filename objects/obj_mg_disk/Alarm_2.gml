/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
if anim_progress < 100 * scr_percentage {
	if !audio_is_playing(snd_rising) {
		mySound = audio_play_sound(snd_rising,0,false);
	}
	if anim_progress + 4 < 100 * scr_percentage {
		anim_progress += 4;
	} else {
		anim_progress = 100 * scr_percentage;
	}
	anim_progress+=2;
	alarm[2] = .1 * room_speed;
} else {
	if audio_exists(mySound) audio_stop_sound(mySound);
	audio_play_sound(snd_hit2, 0, false);
	kill_me = true;
}
