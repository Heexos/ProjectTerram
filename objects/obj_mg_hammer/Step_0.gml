/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

LeftInput = keyboard_check_pressed(vk_left);
RightInput = keyboard_check_pressed(vk_right);

if game_failed {
	active = false;
	end_game = true;
	if alarm[3] == -1 alarm[3] = .5*room_speed;
	alarm[0] = -1;
}

if !end_game {
	if active {
		timer_progress ++;
		if LeftInput {
			if next = keys. left {
				subim_arrow_left = 1;
				subim_arrow_right = 0;
				subim_anim = 1;
				scr++;
				next = keys.right;
			} else {
				//O O F
				subim_arrow_left = 1;
				subim_arrow_right = 1;
				subim_anim = 4;
				scr = 0;
				game_failed = true;
			}
		} else if RightInput {
			if next = keys.right {
				subim_arrow_left = 0;
				subim_arrow_right = 1;
				subim_anim = 0;
				scr++;
				next = keys.left;
			} else {
				//O O F
				subim_arrow_left = 1;
				subim_arrow_right = 1;
				subim_anim = 5;
				scr = 0;
				game_failed = true;
			}
		}
	} else {
		if LeftInput {
			timer_progress ++;
			subim_arrow_left = 1;
			subim_arrow_right = 0;
			subim_anim = 1;
			active = true;
			next = keys.right;
			scr++;
			if alarm[0] == -1 alarm[0] = 5*room_speed;
		} else if RightInput {
			timer_progress ++;
			subim_arrow_left = 0;
			subim_arrow_right = 1;
			subim_anim = 0;
			active = true;
			next = keys.left;
			scr++;
			//Alarme -> Fin du jeu
			if alarm[0] == -1 alarm[0] = 5*room_speed;
		}
	}
} else {
	if alarm[1] == -1 {
	bar_top = fill_height;
	}
}