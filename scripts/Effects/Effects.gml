// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Confusion (_creator, _target) constructor {
	creator = _creator;
	target = _target;
	spr = spr_picto_confused;
	
	function applyEffect(creator, target) {
		switch irandom(2) {
			case 0: //Aucun effet
				show_debug_message("Confusion : No effect");
				var _index;
					if creator.players[| 0].hp <= 0 {
						_index = 1;
					} else if creator.players[| 1].hp <= 0 {
						_index = 0;
					} else {
						_index = irandom(1)
					}
					var _player = creator.players[| _index]
					ds_queue_enqueue(creator.fsm_queue, new State(state.defense, _player, target))
				break;
				
			case 1: //Suppression de l'effet
				show_debug_message("Confusion : End effect");
				var _i = ds_list_find_index(target.effects, self);
				ds_list_delete(target.effects, _i);
				var _index;
					if creator.players[| 0].hp <= 0 {
						_index = 1;
					} else if creator.players[| 1].hp <= 0 {
						_index = 0;
					} else {
						_index = irandom(1)
					}
					var _player = creator.players[| _index]
					ds_queue_enqueue(creator.fsm_queue, new State(state.defense, _player, target))
				break;
				
			case 2: //Application de l'effet
				show_debug_message("Confusion : Apply effect");
				var _rand = irandom(3);
				if creator.ennemies[| _rand].hp > 0 {
					creator.ennemies[| _rand].hp -= target.effective_dmg/2;
				}
				break;
			
		}
	}
}

function Fatigue (_creator, _target) constructor {
	creator = _creator;
	target = _target;
	spr = spr_picto_tired;
	
	function applyEffect(creator, target) {
		switch irandom(2) {
			case 0: //Aucun effet
				show_debug_message("Fatigue : No effect");
				var _index;
					if creator.players[| 0].hp <= 0 {
						_index = 1;
					} else if creator.players[| 1].hp <= 0 {
						_index = 0;
					} else {
						_index = irandom(1)
					}
					var _player = creator.players[| _index]
					ds_queue_enqueue(creator.fsm_queue, new State(state.defense, _player, target))
				break;
				
			case 1: //Suppression de l'effet
				show_debug_message("Fatigue : End effect");
				var _i = ds_list_find_index(target.effects, self);
				ds_list_delete(target.effects, _i);
				var _index;
					if creator.players[| 0].hp <= 0 {
						_index = 1;
					} else if creator.players[| 1].hp <= 0 {
						_index = 0;
					} else {
						_index = irandom(1)
					}
					var _player = creator.players[| _index]
					ds_queue_enqueue(creator.fsm_queue, new State(state.defense, _player, target))
				break;
				
			case 2: //Application de l'effet
				show_debug_message("Fatigue : Apply effect");
				break;
			
		}
	}	
	
}

function Turn (_creator, _target) constructor {
	creator = _creator;
	target = _target;
	spr = spr_picto_turn;
	
	function applyEffect(creator, target) {
		show_debug_message("Apply Turn, size ennemies :" + string(ds_list_size(creator.ennemies)));
		var _dstemp = ds_list_create();
		for (var _j = 0; _j < ds_list_size(creator.ennemies); _j++) {
			show_debug_message("Create temp" + string(_j));
			ds_list_add(_dstemp, ds_list_find_value(creator.ennemies, (_j+1)%4))
		}
		show_debug_message("Copy temp");
		ds_list_copy(creator.ennemies, _dstemp);
		show_debug_message("Delete temp");
		ds_list_destroy(_dstemp);
		show_debug_message("Deleted temp");
		
		var _ennemies = creator.ennemies;
		for (var i = 0; i < ds_list_size(_ennemies); i++) {
			show_debug_message("Ennemi n°"+string(i) + " ancien x :" +string(_ennemies[|i].x)+ " ancien y :" +string(_ennemies[|i].y));
			_ennemies[| i].x = creator.ennemies_pos[i].xx;
			_ennemies[| i].y = creator.ennemies_pos[i].yy;
			show_debug_message("Ennemi n°"+string(i) + " nouveau x :" +string(_ennemies[|i].x)+ " nouveau y :" +string(_ennemies[|i].y)+"\n\n");
			creator.healthbars[| i].owner = _ennemies[| i];
		}
		
		
		var _i = ds_list_find_index(target.effects, self);
		ds_list_delete(target.effects, _i);
		var _index;
			if creator.players[| 0].hp <= 0 {
				_index = 1;
			} else if creator.players[| 1].hp <= 0 {
				_index = 0;
			} else {
				_index = irandom(1);
			}
			var _player = creator.players[| _index]
			ds_queue_enqueue(creator.fsm_queue, new State(state.defense, _player, target))
	}
	
}