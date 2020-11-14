/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
if player.spells[| spell_selector].manaCost <= player.mana {
	player.chosen_spell = player.spells[| spell_selector]
	with creator {
		ds_queue_dequeue(buffer_queue);
		ds_queue_enqueue(buffer_queue, new State(state.target_spell, other.player, noone));
		buffer = "BUFFER KEY PRESSED";
		//ds_queue_dequeue(fsm_queue);
	}
	instance_destroy(self);
	
} else {
	audio_play_sound(snd_coll, 1, false);
}