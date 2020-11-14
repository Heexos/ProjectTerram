/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
while !ds_list_empty(platforms) {
	instance_destroy(platforms[| 0]);
	ds_list_delete(platforms, 0);
}

while !ds_list_empty(instances) {
	instance_destroy(instances[| 0]);
	ds_list_delete(instances, 0);
}

ds_list_destroy(instances);
ds_list_destroy(platforms);