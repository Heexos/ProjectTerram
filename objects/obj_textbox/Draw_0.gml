/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
draw_set_color(make_colour_rgb(45, 0, 45));
draw_set_alpha(.5);
draw_rectangle(margin, room_height/2 + margin, room_width - margin,  room_height - margin, false);
draw_set_color(c_white);
draw_set_alpha(1);
draw_rectangle_width(margin, room_height/2 + margin, room_width - margin,  room_height - margin, width_outline, c_white);

draw_set_font(fnt_base_txt);
if (charCount < string_length(text[page])) {
	charCount += .5;
	if floor(charCount) == charCount {
		audio_play_sound(snd_Talk_1, 1, false);
	}
}
textPart = string_copy(text[page], 1, charCount);
draw_text_ext(2*margin, room_height/2 + 2*margin, textPart, string_height(textPart), room_height + 4*margin);