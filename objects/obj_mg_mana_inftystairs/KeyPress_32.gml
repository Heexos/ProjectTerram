/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
if !falling {
	
	instance_destroy(platforms[| 0]);
	ds_list_delete(platforms, 0);
	for (var _i = 0; _i < ds_list_size(platforms); _i++) {
		platforms[| _i].y +=32;
	}
	player.y += 32;
	
	
	if mana_bloc != noone mana_bloc.y +=32;
	
	

}


if alarm[0] == -1 alarm[0] = 10*room_speed