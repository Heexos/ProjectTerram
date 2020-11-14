/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
instances = ds_list_create();

col_purpule = make_colour_rgb(45, 0, 45);
game_zone = [(room_width - 224) / 2, room_height/2, (room_width + 224) / 2+1,  room_height/2+225];
surface = noone;
width_outline = 4;
ennemies = [noone, noone, noone, noone, noone, noone, noone, noone];
creator = noone;

ds_list_add(instances, instance_create_layer(33, 33, "Instances", obj_mana_wall)); //Top left
ds_list_add(instances, instance_create_layer(97, 33, "Instances", obj_mana_wall)); // Top mid
ds_list_add(instances, instance_create_layer(161, 33, "Instances", obj_mana_wall)); // Top right
ds_list_add(instances, instance_create_layer(33, 161, "Instances", obj_mana_wall)); // Bottom left
ds_list_add(instances, instance_create_layer(97, 161, "Instances", obj_mana_wall)); // Botom mid
ds_list_add(instances, instance_create_layer(161, 161, "Instances", obj_mana_wall)); // Bottom right
ds_list_add(instances, instance_create_layer(33, 97, "Instances", obj_mana_wall)); // left mid
ds_list_add(instances, instance_create_layer(161, 97, "Instances", obj_mana_wall)); // right mid


ds_list_add(instances, instance_create_layer(0,0,"Instances",obj_mg_mana));
ds_list_add(instances, instance_create_layer(193,193,"Instances",obj_mg_mana));
ds_list_add(instances, instance_create_layer(0,193,"Instances",obj_mg_mana));
ds_list_add(instances, instance_create_layer(193,0,"Instances",obj_mg_mana));

alarm[0] = 10*room_speed;