/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
particleSystem = part_system_create();

particleType_Fade = part_type_create();

part_type_sprite(particleType_Fade, global.snap_mana, 0, 0, 1);
part_type_size(particleType_Fade, 1, 1, 0, 0);

part_type_life(particleType_Fade, 20, 20);
part_type_alpha3(particleType_Fade, .5, .3, .1);

part_type_color1(particleType_Fade, c_purple);


