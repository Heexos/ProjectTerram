/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
if (_player.mana + points <= _player.manamax) {
	_player.mana += points;
} else {
	_player.mana = _player.manamax;
}


ds_list_delete(mg.generated_instances, index);


instance_destroy(self);
mg.mana_gem = noone;