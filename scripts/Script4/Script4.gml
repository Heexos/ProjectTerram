// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_return_chosen_state(_key){
	if _key == "UP" {
		return state.target_attack;
	} else if _key == "DOWN" {
		return state.end_flee;
	} else if _key == "RIGHT" {
		return state.choose_spell;
	} else if _key == "LEFT" {
		return state.choose_item;
	} else {
		show_error("Unknown state : " + string(_key), false)
	}
}

function scr_show_target_ennemies(_ennemy_list, _index) {

	for (var i = 0; i < ds_list_size(_ennemy_list); i++) {
		if i == _index {
			_ennemy_list[| i].image_alpha = 0.5 + lengthdir_x(0.5,current_time*0.25)
		} else if _ennemy_list[| i].image_alpha < 1 _ennemy_list[| i].image_alpha = 1
	}


}
