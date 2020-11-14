/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
if !instance_exists(obj_mana_player) {
	player = instance_create_layer(112, 140, "Instances", obj_mana_player);
	player.creator = self;
	player.direction = 45;
	player.spd = sqrt(2*power(32,2)); //Pythagore le bro
	ds_list_add(instances, player);
}


while ds_list_size(platforms) < 7 {
	var _x = platforms[| ds_list_size(platforms)-1].x;
	var _y = platforms[| ds_list_size(platforms)-1].y;
	var _new_x;
	if _x+32 > game_zone[2] - game_zone[0] - 16 {
		_new_x = _x - 32
	} else if _x-32 < -16 {
		_new_x = _x + 32
	} else {
		_new_x = _x + scr_unitary_random()*32
	}
	
	
	
	

	
	
	
	
	var _platform = instance_create_layer(_new_x, _y-32, "Instances", obj_mana_platform);
	ds_list_add(platforms, _platform);
	num++;
	if platforms_nb < 40 {
		platforms_nb++;
	} else if mana_bloc == noone {
		mana_bloc = instance_create_layer(_new_x,_y-64,"Instances",obj_mg_mana);
		ds_list_add(instances, mana_bloc);
	}
}

falling = (collision_point(player.x, player.y + 24, obj_mana_platform, false, false) == noone)

if falling {
	with player {
		blocked = true;
		if place_meeting(x,y - sprite_height*2/3,obj_mana_lava) {
			y += .25
		} else {
			y += 1
		}
	
	}
	
	
}

with mana_bloc {
	if instance_exists(self) and place_meeting(x,y,obj_mana_player) {
		// "scr_apply_effect()"	
		with other {
			creator.buffer = "SPELL_SUCCESS"
		}
		
	}
	
}
if player.y > 7*32 event_perform(ev_alarm, 0)