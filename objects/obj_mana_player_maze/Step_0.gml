/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

// Inherit the parent event
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
	
		var _nearest_cell = instance_nearest(x,y,obj_cell);
		if (direction == 0 and _nearest_cell.walls[1]) or
		(direction == 90 and _nearest_cell.walls[0]) or
		(direction == 180 and _nearest_cell.walls[3]) or
		(direction == 270 and _nearest_cell.walls[2])
		{
			audio_play_sound(snd_coll, 1, false);
		} else {
			x = new_x;
			y = new_y;
		}
	}

}

