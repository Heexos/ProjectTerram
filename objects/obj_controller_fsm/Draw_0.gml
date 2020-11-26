/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

//Dessin de la fleche au dessus du joueur (choose_act)

if curr_state.myState == state.choose_act  {
	draw_sprite(spr_select, 0, playingPlayer.x, scr_wave(playingPlayer.y - 10, playingPlayer.y - 20, 1, 0, 0))
} else if curr_state.myState == state.defense {
	var _xx1 = curr_state.myPlayer.sprite_width;
	var _xx2  = sprite_get_width(spr_target);
	var _yy1 = curr_state.myPlayer.sprite_height;
	var _yy2  = sprite_get_height(spr_target);
	var _x1 = curr_state.myPlayer.x;
	var _y1 = curr_state.myPlayer.y;
	draw_sprite(spr_target, 0, _x1 - (_xx2 - _xx1) / 2, _y1 - (_yy2 - _yy1) * 2 / 3)
} else if curr_state.myState == state.use_spell {
	if buffer != "" {
		
		//draw_clear_alpha(c_white, 1);
		//Need blur

		
		var _curveStruct = animcurve_get(curveAsset2);
		var _channel1 = animcurve_get_channel(_curveStruct, "ang");
		var _value1 = animcurve_channel_evaluate(_channel1, curvePos);
		var _channel2 = animcurve_get_channel(_curveStruct, "size");
		var _value2 = animcurve_channel_evaluate(_channel2, curvePos);
		//show_debug_message(_value1);
		curvePos+=curvSpeed2;
		//Step mais ptdr
		draw_sprite_ext(global.snap_mana,0, (room_width - 224) / 2 + sprite_get_width(global.snap_mana)/2-3,room_height/2+ sprite_get_height(global.snap_mana)/2-3, _value2, _value2, _value1, c_white, 1);
		
		if !instance_exists(obj_mana_particle_win) {
			instance_create_layer(0,0,"Instances", obj_mana_particle_win);
		} else {
			with obj_mana_particle_win {
				part_type_orientation(particleType_Fade, _value1, _value1, 0, 0, 0);
				part_type_size(particleType_Fade, _value2, _value2, 0, 0);
			}
		}
		/*shader_set(shd_gaussian_blur);
		shader_set_uniform_f(usize,231,231,8)//width,height,radius
		var _curveStruct = animcurve_get(curveAsset1);
		var _channel = animcurve_get_channel(_curveStruct, "ang");
		var _value = animcurve_channel_evaluate(_channel, curvePos);
		show_debug_message(_value);
		curvePos+=curvSpeed1;
		
		
		
		draw_sprite_ext(global.snap_mana,0, (room_width - 224) / 2 + sprite_get_width(global.snap_mana)/2-3,room_height/2+ sprite_get_height(global.snap_mana)/2-3, 1, 1, _value, c_white, 1);
		
		shader_reset()
		draw_sprite_ext(spr_fissure, 0, (room_width - 224) / 2 + sprite_get_width(spr_fissure)/2-3, room_height/2+ sprite_get_height(spr_fissure)/2-3, 1, 1, _value, c_white, 1);*/
		if buffer = "SPELL_MISSED" {

		} else if buffer = "SPELL_SUCCESS" {

		}
		
	}
	
}