/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
hInput = keyboard_check(vk_right) - keyboard_check(vk_left);
vInput = keyboard_check(vk_down) - keyboard_check(vk_up);

if (hInput != 0 or vInput != 0) {
	dir = point_direction(0, 0, hInput, vInput);
	moveX = lengthdir_x(spd, dir);
	moveY = lengthdir_y(spd, dir);
	
	x += moveX;
	y += moveY;
}

x = clamp(x, 0, creator.game_zone[2] - creator.game_zone[0] -sprite_width);
y = clamp(y, 0, creator.game_zone[3] - creator.game_zone[1] - sprite_height);