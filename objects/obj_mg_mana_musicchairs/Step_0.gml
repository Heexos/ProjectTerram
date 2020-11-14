/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
if !instance_exists(obj_mana_player) {
	var _player = instance_create_layer(112, 112, "Instances", obj_mana_player);
	_player.creator = self;
	ds_list_add(instances, _player);
	//ds_list_add(generated_instances, _player);
	with (instance_create_layer(48, 16, "Instances", obj_mg_ennemy1)) {
		status = "LEFT";
		ds_list_add(other.instances, self);
	}
	
	with (instance_create_layer(112, 16, "Instances", obj_mg_ennemy1)) {
		status = "LEFT";
		ds_list_add(other.instances, self);
	}
	
	with (instance_create_layer(112, 208, "Instances", obj_mg_ennemy1)) {
		status = "RIGHT";
		ds_list_add(other.instances, self);
	}
	
	with (instance_create_layer(176, 208, "Instances", obj_mg_ennemy1)) {
		status = "RIGHT";
		ds_list_add(other.instances, self);
	}
	
	with (instance_create_layer(16, 112, "Instances", obj_mg_ennemy1)) {
		status = "DOWN";
		ds_list_add(other.instances, self);
	}
	
	with (instance_create_layer(16, 176, "Instances", obj_mg_ennemy1)) {
		status = "DOWN";
		ds_list_add(other.instances, self);
	}
	
	with (instance_create_layer(208, 112, "Instances", obj_mg_ennemy1)) {
		status = "UP";
		ds_list_add(other.instances, self);
	}
	
	with (instance_create_layer(208, 48, "Instances", obj_mg_ennemy1)) {
		status = "UP";
		ds_list_add(other.instances, self);
	}
	
obj_mg_ennemy1.creator = self;
}


if instance_number(obj_mg_mana) <= 0 {
	creator.buffer = "SPELL_SUCCESS"
}