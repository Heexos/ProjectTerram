/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

//Zones de textes
draw_set_color(col_purpule);
x1 = (room_width - total_width)/2;
draw_rectangle(x1, room_height/2, x1 + 2*length/3, room_height-margin, false);
draw_rectangle_width(x1, room_height/2, x1 + 2*length/3, room_height-margin, 5, c_white);
x2 = x1 + 2*length/3 + margin;
draw_set_color(col_purpule);
draw_rectangle(x2, room_height/2, x2 + length, room_height-margin, false);
draw_rectangle_width(x2, room_height/2, x2 + length, room_height-margin, 5, c_white);


//Textes

//Selection (Gauche)
yy = 20
draw_set_font(fnt_mana_desc);
for (var i = 0; i < spell_number; i++) {
	if (i = spell_selector) {
		draw_set_color(c_yellow); 
		draw_text(scr_wave(x1+15, x1+18, 1, 0, 0), room_height/2 + margin + spell_selector*yy, ">");
	} else draw_set_color(c_white);
	draw_text(x1 + 30, room_height/2 + margin + i*yy, string(player.spells[| i].abreviation));
}

// Description (Droite)

draw_set_color(c_white);

draw_text(x2+margin, room_height/2 + margin, string(player.spells[| spell_selector].name))
draw_text_ext(x2+margin,room_height/2 + 3*margin,string(player.spells[| spell_selector].description), margin, length - 2*margin);
draw_text(x2+margin, room_height/2 + 6*margin, string("Coût : ") + string(player.spells[| spell_selector].manaCost));
draw_text_ext(x2+margin, room_height/2 + 8*margin, string("Effet : \n") + string(player.spells[| spell_selector].desc_effect), margin, length - 2*margin);