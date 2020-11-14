/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

/*if myPlayer == noone {
	myPlayer = instance_create_layer(room_width/2, 3*room_height/4, "Instances", obj_player);
	myPlayer.creator = self;
}

if myChick == noone {
	myChick = instance_create_layer(0, (game_zone[3] - game_zone[1]) / 2, "Instances", obj_chick1);
	myChick.creator = self;
}*/


if !instance_exists(obj_mg_player) {
	//player = instance_create_layer((game_zone[2] - game_zone[0])/2, (game_zone[1] - game_zone[3])/2, "Instances", obj_mg_player);
	player = instance_create_layer((game_zone[0]+game_zone[2])/2,(game_zone[1]+game_zone[3])/2, "Instances", obj_mg_player);
	player.creator = self;
	ds_list_add(generated_instances, player);
}

	
if !instance_exists(obj_chick) {
	var _chick = instance_create_layer(10, 10, "Instances", obj_chick);
	ds_list_add(generated_instances, _chick);
}

if mana_gem == noone {

	mana_gem = scr_mana_gem_gen(player.x,player.y, game_zone);
	mana_gem.mg = self;
	ds_list_add(generated_instances, mana_gem);
}