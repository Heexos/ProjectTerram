/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
vInput = keyboard_check_pressed(vk_up) - keyboard_check_pressed(vk_down)
spell_number = ds_list_size(player.spells);
if vInput > 0 {
	if spell_selector == 0 {
		spell_selector = spell_number - 1;
	} else {
		spell_selector--;
	}
} else if vInput < 0 {
		if spell_selector == spell_number - 1 {
		spell_selector = 0;
	} else {
		spell_selector++;
	}
}

if keyboard_check_pressed(vk_escape) {
	for (var i = 0; i < ds_list_size(creator.ennemies); i++) {
		creator.ennemies[| i].image_alpha = 1;
	}
	ds_queue_dequeue(creator.buffer_queue);
	instance_destroy(self);

	
}
