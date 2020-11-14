/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
if hp <= 0 image_blend = c_gray;
draw_self();
if ds_list_size(effects) > 0 for (var i = 0; i < ds_list_size(effects); i++ ) {
	draw_sprite(effects[| i].spr, 0, x + 16*i, y);
}