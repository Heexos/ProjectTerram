/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
draw_set_color(make_colour_rgb(45, 0, 45));
draw_set_alpha(.95);
draw_rectangle(margin, room_height/2 + margin, room_width - margin,  room_height - margin, false);
draw_set_color(c_white);
draw_set_alpha(1);
draw_rectangle_width(margin, room_height/2 + margin, room_width - margin,  room_height - margin, width_outline, c_white);

var _curveStruct = animcurve_get(curveAsset);
var _channel = animcurve_get_channel(_curveStruct, "crv");
var _value = animcurve_channel_evaluate(_channel, curvePos);
curvePos = (curvePos + curveSpeed)%1;

var _start_x = (room_width - (2*16 + nb_items*(15+15+1))) / 2; //les 16 : >, -, ...
draw_triangle(_start_x-2 - 5*_value, room_height/2 + 32, _start_x + 15 - 5*_value, room_height/2 + 24, _start_x + 15 - 5*_value, room_height/2 + 40, false);
draw_triangle(room_width - _start_x + 8 + 5*_value, room_height/2 + 32, room_width - (_start_x + 8) + 5*_value, room_height/2 + 24, room_width - (_start_x + 8) + 5*_value, room_height/2 + 40, false);
for (var i = 0; i < nb_items; i++) {
	draw_circle_color(_start_x+30*(i+1)+7,room_height/2+32, 4, c_fuchsia, c_fuchsia, false);
	if (i != select) {
		draw_circle(_start_x+30*(i+1)+7,room_height/2+32, 4, false);
	} else {
		draw_circle(_start_x+30*(i+1)+7,room_height/2+32, 8, false);
	}
	//draw_rectangle(_start_x + 32*(i + 1), room_height/2 + 30, _start_x + 32*(i + 1) + 15, room_height/2 + 34, false);
	draw_point_color(_start_x+30*(i+1)+7,room_height/2+32,c_green);
}

draw_set_font(fnt_items_desc);
draw_text((room_width - name_w) / 2, room_height/2 + 48, name);
draw_text_ext(2*margin,room_height/2 + 80, desc, 20, room_width - 4*margin);