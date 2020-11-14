/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
lInput = keyboard_check_pressed(vk_left);
rInput = keyboard_check_pressed(vk_right);
bInput = keyboard_check_pressed(vk_up) or keyboard_check_pressed(vk_down);
mInput = keyboard_check_pressed(vk_space);

if !blocked {
	if lInput direction += 90;
	if rInput direction -=90;
	if bInput direction +=180;
	if mInput {
		new_x = x + lengthdir_x(spd, direction);
		new_y = y + lengthdir_y(spd, direction);
	
	
		if place_meeting(new_x, new_y, obj_mana_wall) or
		new_x < 0 or new_x > 7*32 or new_y < 0 or new_y > 7*32 {
			audio_play_sound(snd_coll, 1, false);
		} else {
			x = new_x;
			y = new_y;
		}
	}

}
//image_angle = direction;
