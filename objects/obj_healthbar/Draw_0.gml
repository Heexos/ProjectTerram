/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

var spriteWidth = sprite_get_width(spr_health_bar_fill);
var spriteHeight = sprite_get_height(spr_health_bar_fill);
if owner != noone {
	var hpPercent = owner.hp/owner.hpmax;
	draw_rectangle_color(x,y,spriteWidth+x-1, spriteHeight+y-1,c_dkgray, c_dkgray, c_dkgray, c_dkgray, false);
	draw_sprite_part(spr_health_bar_fill, 0, 0, 0, spriteWidth*hpPercent, spriteHeight, x, y);
	
}