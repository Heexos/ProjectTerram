/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
audio_play_sound(snd_mana_pick_short, 1, false);
var _myPlayer = other.player;
if (_myPlayer.mana + points <= _myPlayer.manamax) {
	_myPlayer.mana += points;
} else {
	_myPlayer.mana = _myPlayer.manamax;
}

ds_list_delete(mg.generated_instances, index);;

instance_destroy(self);
mg.mana_gem = noone;