/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
if alarm[0] < 0 alarm[0] = timer*room_speed
if !instance_exists(obj_mg_player) {
	//player = instance_create_layer((game_zone[2] - game_zone[0])/2, (game_zone[1] - game_zone[3])/2, "Instances", obj_mg_player);
	player = instance_create_layer((game_zone[0]+game_zone[2])/2,(game_zone[1]+game_zone[3])/2, "Instances", obj_mg_player);
	player.creator = self;
	ds_list_add(generated_instances, player);
}

if mana_gem == noone {
	
	mana_gem = scr_mana_gem_gen(player.x,player.y, game_zone);

	mana_gem.mg = self;
	ds_list_add(generated_instances, mana_gem);
	mana_gem.index = ds_list_size(generated_instances) - 1;
}
