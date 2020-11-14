/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

if (keyboard_check_pressed(vk_space)) {
	if charCount < string_length(text[page]) {
		charCount = string_length(text[page])
	} else if (page + 1 < array_length_1d(text)) {
		page ++;
		charCount = 0;
		audio_play_sound(snd_Bip_2, 1, false);
	} else {
		finished = true;
		audio_play_sound(snd_Bip_2, 1, false);
	}
}