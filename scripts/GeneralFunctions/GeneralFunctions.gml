// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_target_ennemies(_ennemies, _targeted) {
	if _targeted == -1 {
			if _ennemies[| 0].hp > 0 {
				_targeted = 0;
			} else if _ennemies[| 1].hp > 0 {
				_targeted = 1;
			} else if _ennemies[| 3].hp > 0 {
				_targeted = 3;
			} else {
				_targeted = 2;
			}
		} else if keyboard_check_pressed(vk_up) or keyboard_check_pressed(vk_down) {
			if _targeted == 0 or _targeted == 1 {
				if _ennemies[| 3].hp > 0 {
					_targeted = 3;
				} else if _ennemies[| 2].hp > 0 {
					_targeted = 2;
				}
			} else {
				if _ennemies[| 0].hp > 0 {
					_targeted = 0;
				} else if _ennemies[| 1].hp > 0 {
					_targeted = 1;
				}
			}
		}
	return _targeted;
}

function scr_reset_alpha_ennemies(_ennemies) {
	
	for (var i = 0; i < ds_list_size(_ennemies); i++) _ennemies[| i].image_alpha = 1;
}