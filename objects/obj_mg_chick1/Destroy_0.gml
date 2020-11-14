/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

while !ds_list_empty(generated_instances) {
	instance_destroy(generated_instances[| 0]);
	ds_list_delete(generated_instances, 0);
}