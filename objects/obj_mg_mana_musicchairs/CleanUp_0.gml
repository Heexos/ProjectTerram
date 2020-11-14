/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
while !ds_list_empty(instances) {
	instance_destroy(instances[| 0]);
	ds_list_delete(instances, 0);
}

ds_list_destroy(instances);