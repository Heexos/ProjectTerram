/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
if !invincible {
	invincible = true;
	alarm[0] = invulnerability*room_speed;
	audio_play_sound(snd_Hit_1, 10, 0);
	player.hp -= ennemy.effective_dmg;
	
	
	/*for (var i = 0; i < array_length_(obj_controller.targets); i++) {
		obj_controller.targets[i].hp -= other.dmg/array_length_1d(obj_controller.targets);
	}
	if (array_length_1d(obj_controller.targets) == 1 and obj_controller.targets[0].hp <= 0) {
			instance_destroy(self);
	}*/
} 