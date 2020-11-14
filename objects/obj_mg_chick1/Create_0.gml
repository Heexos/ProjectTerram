/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
margin = 15;
width_outline = 4;
col_purpule = make_colour_rgb(45, 0, 45);
game_zone = [margin, room_height/2 + margin, room_width - margin,  room_height - margin];
surface = noone;
creator = noone;
randomize();

generated_instances = ds_list_create();

timer = random_range(.3,.5);

alarm[1] = 5*room_speed;

mana_gem = noone;