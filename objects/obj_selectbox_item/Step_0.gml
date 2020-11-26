/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
if mana == -1 {
	nb_items = ds_list_size(global.items);
	
	name = global.items[| select].name;
	name_w = string_width(name);
	desc = global.items[| select].description;
	
	show_debug_message(alarm[0]);	
	if keyboard_check_pressed(vk_right) {
		select = (select + 1)%nb_items;
	} else if keyboard_check_pressed(vk_left) {
		if select == 0 select = nb_items -1 else select = (select - 1)%nb_items;
	}
	
	
	if keyboard_check_pressed(vk_enter) {
		var _hp = global.items[| select].healthRestore;
		mana = global.items[| select].manaRestore;
		player.hp += _hp;
		player.mana += mana;
	
		if _hp > 0 {
			scr_display_points(player, c_lime, _hp);
			if mana > 0 {
				show_debug_message("ptdr")
				alarm[0] = .25*room_speed;
			} else alarm[0] = 1;
		} else if mana > 0 {
			scr_display_points(player, c_aqua, _hp);
			alarm[0] = 1;
		}
	
	
		ds_list_delete(global.items, select);
		with creator {
			ds_queue_dequeue(buffer_queue);
			ds_queue_dequeue(fsm_queue);
			if ds_queue_size(fsm_queue) == 0 ds_queue_enqueue(fsm_queue, new State(state.end_turn, noone, noone));
		}
	
	}
}

