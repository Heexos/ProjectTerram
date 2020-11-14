// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_textbox(_creator, _text){
	if !instance_exists(obj_textbox) {
			_myTextBox = instance_create_layer(0,0,"GUI", obj_textbox);
			_myTextBox.creator = _creator;
			_myTextBox.text = _text;
	}
	return _myTextBox
}

function draw_rectangle_width(_x1, _y1, _x2, _y2, _thickness, _color) {


	draw_set_color(_color)

	draw_line_width(_x1 - _thickness/2, _y1, _x2 + _thickness/2, _y1, _thickness) // Top
	draw_line_width(_x1, _y1, _x1, _y2, _thickness) // Left
	draw_line_width(_x2, _y1, _x2, _y2, _thickness) // Right
	draw_line_width(_x1 - _thickness/2, _y2, _x2 + _thickness/2, _y2, _thickness) // Bottom


}

function scr_wave(_from, _to, _duration, _offset, _timer) {
	if (_timer == 0) _timer = current_time;
	var _thing = (_to - _from) * .5;
	return _from + _thing + sin((((_timer * .001) + _duration * _offset) / _duration) * (pi * 2)) * _thing;
}

function scr_health_circle(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8) {
	//scr_health_circle(x,y,radius,maxsegments,segments,startangle,totalangle,direction,colour)

	//argument0 = x
	//argument1 = y
	//argument2 = radius
	//argument3 = maxsegments
	//argument4 = segments
	//argument5 = startangle
	//argument6 = totalangle
	//argument7 = direction
	//argument8 = colour

	var anglechange = (argument6/argument3)*(pi/180)
	var i = argument5*(pi/180)

	var ax = argument0+(cos(i)*argument2)
	var ay = argument1-(sin(i)*argument2)

	repeat(argument4) {
	i += argument7 * anglechange

	var bx = argument0+(cos(i)*argument2)
	var by = argument1-(sin(i)*argument2)

	draw_triangle_colour(ax,ay,bx,by,argument0,argument1,argument8,argument8,argument8,0)

	ax = bx
	ay = by
	}


}

function scr_draw_progress(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9) {
	//scr_draw_rectangle_outline_v2(x1, y1, x2, y2, thickness, c_background, c_progress, c_finish, curr_progress, max_progress)

	//@param x1
	//@param y1
	//@param x2
	//@param y2
	//@param thickness
	//@param c_background
	//@param c_progress
	//@param curr_progress
	//@param max_progress

	var x1 = argument0
	var y1 = argument1
	var x2 = argument2
	var y2 = argument3
	var thickness = argument4
	var c_background = argument5
	var c_progress = argument6
	var c_finish = argument7
	var curr_progress = argument8
	var max_progress = argument9

	gpu_set_blendenable(false)
	gpu_set_colorwriteenable(false,false,false,true);
	draw_set_alpha(0);
	draw_rectangle(0,0, view_wport[0],view_hport[0], false);

	draw_set_alpha(1);
	draw_rectangle_width(x1, y1, x2, y2, thickness, c_white);
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true,true,true,true);

	gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);



	if curr_progress >= max_progress {
		scr_health_circle((x2 + x1) / 2,(y2 + y1) / 2,sqrt(power((x2 - x1 + thickness) / 2, 2) + power((y2 - y1 + thickness) / 2,2)), 2 * max_progress, 2 * max_progress,-90,360,1,c_finish);
	} else {
		scr_health_circle((x2 + x1) / 2,(y2 + y1) / 2,sqrt(power((x2 - x1 + thickness) / 2, 2) + power((y2 - y1 + thickness) / 2,2)), 2 * max_progress, 2 * max_progress,-90,360,1,c_background);
		scr_health_circle((x2 + x1) / 2,(y2 + y1) / 2,sqrt(power((x2 - x1 + thickness) / 2, 2) + power((y2 - y1 + thickness) / 2,2)), 2 * max_progress,curr_progress,-90,360,1,c_progress);
		scr_health_circle((x2 + x1) / 2,(y2 + y1) / 2,sqrt(power((x2 - x1 + thickness) / 2, 2) + power((y2 - y1 + thickness) / 2,2)), 2 * max_progress,curr_progress ,-90,360, - 1,c_progress);
	}
	gpu_set_alphatestenable(false);
	gpu_set_blendmode(bm_normal);


}

function scr_unitary_random() {
	if irandom(1) == 0 {
		return 1;	
	} else {
		return -1
	}
	
}
