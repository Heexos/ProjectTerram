/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
timer = random_range(.3,.5);

var _x_spawn = random_range(0, game_zone[2] - game_zone[0] - sprite_get_width(spr_egg));
var _spd = random_range(3,6);

var _myEgg = instance_create_layer(_x_spawn, -sprite_get_height(spr_egg), "Instances", obj_egg);
_myEgg.creator = self;
_myEgg.g = _spd;
ds_list_add(generated_instances, _myEgg)
alarm[0] = timer*room_speed;