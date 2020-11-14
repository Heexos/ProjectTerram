/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

LeftInput = keyboard_check_pressed(vk_left);
RightInput = keyboard_check_pressed(vk_right);
UpInput = keyboard_check_pressed(vk_up);
DownInput = keyboard_check_pressed(vk_down);

if game_failed {
	active = false;
	end_game = true;
	if alarm[3] == -1 alarm[3] = .5*room_speed;
	alarm[0] = -1;
}


if !end_game {
	if active {
		timer_progress ++;
		if RightInput {
			if next = keys.right {
				subim_arrow_left = 1;
				subim_arrow_up = 0;
				subim_arrow_down = 1;
				subim_arrow_right = 1;
				subim_anim = 0;
				scr++;
				next = keys.up;
			} else {
				//O O F
				subim_arrow_left = 1;
				subim_arrow_up = 1;
				subim_arrow_down = 1;
				subim_arrow_right = 1;
				subim_anim = 6;
				scr = 0;
				game_failed = true;
			}
		} else if UpInput {
			if next = keys.up {
				subim_arrow_left = 0;
				subim_arrow_up = 1;
				subim_arrow_down = 1;
				subim_arrow_right = 1;
				subim_anim = 1;
				scr++;
				next = keys.left;
			} else {
				//O O F
				subim_arrow_left = 1;
				subim_arrow_up = 1;
				subim_arrow_down = 1;
				subim_arrow_right = 1;
				subim_anim = 6;
				scr = 0;
				game_failed = true;
			}
		} else if LeftInput {
			if next = keys.left {
				subim_arrow_left = 1;
				subim_arrow_up = 1;
				subim_arrow_down = 0;
				subim_arrow_right = 1;
				subim_anim = 2;
				scr++;
				next = keys.down;
			} else {
				//O O F
				subim_arrow_left = 1;
				subim_arrow_up = 1;
				subim_arrow_down = 1;
				subim_arrow_right = 1;
				subim_anim = 7;
				scr = 0;
				game_failed = true;
			}
		} else if DownInput {
			if next = keys.down {
				subim_arrow_left = 1;
				subim_arrow_up = 1;
				subim_arrow_down = 1;
				subim_arrow_right = 0;
				subim_anim = 3;
				scr++;
				next = keys.right;
			} else {
				//O O F
				subim_arrow_left = 1;
				subim_arrow_up = 1;
				subim_arrow_down = 1;
				subim_arrow_right = 1;
				subim_anim = 7;
				scr = 0;
				game_failed = true;
			}
		}
	} else {
		if LeftInput {
			timer_progress ++;
			subim_arrow_left = 1;
			subim_arrow_up = 1;
			subim_arrow_down = 0;
			subim_arrow_right = 1;
			subim_anim = 2;
			active = true;
			next = keys.down;
			scr++;
			if alarm[0] == -1 alarm[0] = 5*room_speed;
		} else if RightInput {
			timer_progress ++;
			subim_arrow_left = 1;
			subim_arrow_up = 0;
			subim_arrow_down = 1;
			subim_arrow_right = 1;
			subim_anim = 0;
			active = true;
			next = keys.up;
			scr++;
			//Alarme -> Fin du jeu
			if alarm[0] == -1 alarm[0] = 5*room_speed;
		} else if UpInput {
			timer_progress ++;
			subim_arrow_left = 0;
			subim_arrow_up = 1;
			subim_arrow_down = 1;
			subim_arrow_right = 1;
			subim_anim = 1;
			active = true;
			next = keys.left;
			scr++;
			//Alarme -> Fin du jeu
			if alarm[0] == -1 alarm[0] = 5*room_speed;
		} else if DownInput {
			timer_progress ++;
			subim_arrow_left = 1;
			subim_arrow_up = 1;
			subim_arrow_down = 1;
			subim_arrow_right = 0;
			subim_anim = 3;
			active = true;
			next = keys.right;
			scr++;
			//Alarme -> Fin du jeu
			if alarm[0] == -1 alarm[0] = 5*room_speed;
		}
	}
} else {
	if alarm[1] == -1 {
		/*for (var i = 0; i < scr_percentage*fill_height; i++) {
			bar_top = fill_height - i;
			bar_height = i;
			//show_debug_message(bar_top);
		
		}*/
	bar_top = fill_height;
	}
}