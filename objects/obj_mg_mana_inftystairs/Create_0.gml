/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
randomize();
instances = ds_list_create()

col_purpule = make_colour_rgb(45, 0, 45);
game_zone = [(room_width - 224) / 2, room_height/2, (room_width + 224) / 2+1,  room_height/2+225];
surface = noone;
width_outline = 4;
player = noone;
falling = false;

platforms = ds_list_create();
platforms_nb = 1;
var _platform = instance_create_layer(96+scr_unitary_random()*32, 192, "Instances", obj_mana_platform);
ds_list_add(platforms, _platform);
_platform = instance_create_layer(96, 160, "Instances", obj_mana_platform);
ds_list_add(platforms, _platform);

for (var _i = 0; _i<7; _i++) {
	var _lava = instance_create_layer(32*_i, 193, "Instances", obj_mana_lava);
	ds_list_add(instances, _lava);
}
num = -5
mana_bloc = noone;

