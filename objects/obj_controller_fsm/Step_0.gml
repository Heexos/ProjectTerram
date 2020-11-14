/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

//Lecture de la file
if !ds_queue_empty(fsm_queue) curr_state = ds_queue_head(fsm_queue);
if keyboard_check_pressed(vk_f6) show_debug_message(string(curr_state) + " Queue Size : " + string (ds_queue_size(fsm_queue)))

if (ds_queue_size(buffer_queue) > 0) {
	var _buffer_state = ds_queue_head(buffer_queue);
	if _buffer_state.myState == state.target_attack {
		if keyboard_check_pressed(vk_escape) {
			targeted = -1;
			for (var i = 0; i < ds_list_size(ennemies); i++) {
				ennemies[| i].image_alpha = 1;
			}
			ds_queue_dequeue(buffer_queue);
		}
		
		if targeted == -1 {
			if ennemies[| 0].hp > 0 {
				targeted = 0;
			} else if ennemies[| 1].hp > 0 {
				targeted = 1;
			} else if ennemies[| 3].hp > 0 {
				targeted = 3;
			} else {
				targeted = 2;
			}
		} else if keyboard_check_pressed(vk_up) or keyboard_check_pressed(vk_down) {
			if targeted == 0 or targeted == 1 {
				if ennemies[| 3].hp > 0 {
					targeted = 3;
				} else if ennemies[| 2].hp > 0 {
					targeted = 2;
				}
			} else {
				if ennemies[| 0].hp > 0 {
					targeted = 0;
				} else if ennemies[| 1].hp > 0 {
					targeted = 1;
				}
			}
		}
		
		
		if buffer == "" {
			scr_show_target_ennemies(ennemies, targeted);
			if keyboard_check_pressed(vk_enter) {
				for (var i = 0; i < ds_list_size(ennemies); i++) {
					ennemies[| i].image_alpha = 1;
				}
				ds_queue_dequeue(fsm_queue);
				ds_queue_enqueue(fsm_queue, new State(state.attack, _buffer_state.myPlayer, ennemies[| targeted]));
				ds_queue_dequeue(buffer_queue);
				targeted = -1;
			}
		} else buffer = "";
		
	} else if _buffer_state.myState == state.choose_spell {
		if !instance_exists(obj_selectbox_mana) {
			var _selectbox = instance_create_layer(0,0,"GUI",obj_selectbox_mana);
			_selectbox.player = _buffer_state.myPlayer;
			_selectbox.creator = self;
		}
	
	
	
	

	
	} else if _buffer_state.myState == state.target_spell {
		if keyboard_check_pressed(vk_escape) {
			targeted = -1;
			ds_queue_dequeue(buffer_queue);
			ds_queue_enqueue(buffer_queue, new State(state.choose_spell, _buffer_state.myPlayer, noone));
		}
		
		if targeted == -1 {
			if ennemies[| 0].hp > 0 {
				targeted = 0;
			} else if ennemies[| 1].hp > 0 {
				targeted = 1;
			} else if ennemies[| 3].hp > 0 {
				targeted = 3;
			} else {
				targeted = 2;
			}
		} else if keyboard_check_pressed(vk_up) or keyboard_check_pressed(vk_down) {
			if targeted == 0 or targeted == 1 {
				if ennemies[| 3].hp > 0 {
					targeted = 3;
				} else if ennemies[| 2].hp > 0 {
					targeted = 2;
				}
			} else {
				if ennemies[| 0].hp > 0 {
					targeted = 0;
				} else if ennemies[| 1].hp > 0 {
					targeted = 1;
				}
			}
		}
		
		if buffer == "" {
			scr_show_target_ennemies(ennemies, targeted);
			// C'est pété
			if keyboard_check_pressed(vk_enter) {
				for (var i = 0; i < ds_list_size(ennemies); i++) {
					ennemies[| i].image_alpha = 1;
				}
				show_debug_message("ICIIIIIII")
				_buffer_state.myPlayer.mana -= _buffer_state.myPlayer.chosen_spell.manaCost
				ds_queue_dequeue(fsm_queue);
				ds_queue_enqueue(fsm_queue, new State(state.use_spell, _buffer_state.myPlayer, ennemies[| targeted]));
				ds_queue_dequeue(buffer_queue);
				targeted = -1;
			}
		} else buffer = "";
		

		
		
		
	} else if _buffer_state.myState == state.end_loose {
		ds_queue_clear(buffer_queue);
		ds_queue_clear(fsm_queue);
		room_goto(rm_end_loose);
	} else if _buffer_state.myState == state.end_win {
		ds_queue_clear(buffer_queue);
		ds_queue_clear(fsm_queue);
		room_goto(rm_end_win);
	} else if _buffer_state.myState == state.end_flee {
		ds_queue_clear(buffer_queue);
		ds_queue_clear(fsm_queue);
		room_goto(rm_end_flee);
	} else {
	show_message("Cette fonctionnalité n'est pas encore intégrée, redémarrage du jeu");
	game_restart();
}
	
	
	
	
	
	buffer_state = noone;
//State : Start
} else if curr_state.myState == state.start {
	//Création de la boite de texte
	var _tb = scr_create_textbox(self, ["Salut salut", "Nouvelle version, nouvelles fonctionnalités et surement nouveaux bugs", "N'oubliez pas de donner votre avis, remarques, bugs...", "C'est pour avoir un retour que je vous fait tester !", "Enjoy"])
	
	// Animation de FOU FURIEU
	if !instance_exists(players_to_generate[| 0]) {
		var _player = instance_create_layer(100,120,"Instances", players_to_generate[| 0]);
		ds_list_add(players, _player);
		var _hb = instance_create_layer(10,10,"GUI", obj_healthbar);
		_hb.owner = _player;
		var _mb = instance_create_layer(125,10,"GUI", obj_manabar);
		_mb.owner = _player;
	}
	if !instance_exists(players_to_generate[| 1]) {
		var _player = instance_create_layer(25,140, "Instances", players_to_generate[| 1]);
		ds_list_add(players, _player);
		var _hb = instance_create_layer(10,50,"GUI", obj_healthbar);
		_hb.owner = _player;
		var _mb = instance_create_layer(125,50,"GUI", obj_manabar);
		_mb.owner = _player;
	}
	//Gen des ennemies
	if !instance_exists(obj_chicken) {
		
		//Top Left
		var _ennemy = instance_create_layer(ennemies_pos[0].xx, ennemies_pos[0].yy, "Instances", ennemies_to_generate[| 0]);
		var _hb = instance_create_layer(490,10,"GUI", obj_healthbar);
		_hb.owner = _ennemy;
		ds_list_add(healthbars, _hb);
		ds_list_add(ennemies, _ennemy);
		
		//Top Right
		_ennemy = instance_create_layer(ennemies_pos[1].xx, ennemies_pos[1].yy, "Instances", ennemies_to_generate[| 1]);
		_hb = instance_create_layer(610,10,"GUI", obj_healthbar);
		_hb.owner = _ennemy;
		ds_list_add(healthbars, _hb);
		ds_list_add(ennemies, _ennemy)
		
		//Bottom Right
		_ennemy = instance_create_layer(ennemies_pos[2].xx, ennemies_pos[2].yy, "Instances", ennemies_to_generate[| 2]);
		_hb = instance_create_layer(610,50,"GUI", obj_healthbar);
		_hb.owner = _ennemy;
		ds_list_add(healthbars, _hb);
		ds_list_add(ennemies, _ennemy)
		
		//Bottom Left
		_ennemy = instance_create_layer(ennemies_pos[3].xx, ennemies_pos[3].yy, "Instances", ennemies_to_generate[| 3]);
		_hb = instance_create_layer(490,50,"GUI", obj_healthbar);
		_hb.owner = _ennemy;
		ds_list_add(healthbars, _hb);
		ds_list_add(ennemies, _ennemy)
		
	}
	//Gen des joueurs
	
	
	
	//Passage à la prochaine étape
	if _tb.finished {
		for (var i = 0; i < ds_list_size(players); i++) {
			var _player = players[| i];
			ds_queue_enqueue(fsm_queue, new State(state.choose_act, _player, noone))
		}
		instance_destroy(_tb);
		ds_queue_dequeue(fsm_queue);
	}
	
//State : Choose_act
} else if curr_state.myState == state.choose_act {
	
	//Simon et gestion de la file
	if !instance_exists(obj_simon) and buffer == "" {
		simon = instance_create_layer(0, 0, "GUI", obj_simon);
	} else if buffer != "" {
		// #clafin
		instance_destroy(simon);
		simon = noone;
		var _next_state = scr_return_chosen_state(buffer);
		ds_queue_enqueue(buffer_queue, new State(_next_state, curr_state.myPlayer, noone));
		//ds_queue_dequeue(fsm_queue);
		buffer = "";
	}
	
	//Fleche et personnage qui scintille
	playingPlayer = curr_state.myPlayer;
	
	
} else if curr_state.myState == state.attack {
	var _wp = curr_state.myPlayer.weapon
	if !instance_exists(_wp.obj) {
		mg = instance_create_layer(0,0,"Instances",_wp.obj);
	} else if mg.kill_me {
		//Recuperer les variables intérésantes avant de detruire l'objet
		var _dmg = mg.scr_percentage*_wp.dmg
		instance_destroy(mg);
		//Application des damage
		curr_state.myEnnemy.hp -= _dmg;
		//File gestion
		ds_queue_dequeue(fsm_queue);
		//Si la pile est vide => Il n'y a plus de joueurs en attente, on passe aux ennemis
		if ds_queue_size(fsm_queue) == 0 ds_queue_enqueue(fsm_queue, new State(state.end_turn, noone, noone));
		
		

		var _ennemies_remain = 0;
		for (var i = 0; i < ds_list_size(ennemies); i++) {
			if ennemies[| i] != noone and ennemies[| i].hp > 0 {
				_ennemies_remain++;
			}
		}
		if _ennemies_remain == 0 ds_queue_enqueue(buffer_queue, new State(state.end_win, noone, noone));
		
	}
	
	
} else if curr_state.myState == state.defense {
	if buffer == "" {
		mg = curr_state.myEnnemy.attacks[irandom_range(0, array_length(curr_state.myEnnemy.attacks) - 1)];
		instance_create_layer(0,0,"Instances", mg);
		mg.creator = self;
		buffer = "MG_CREATED";
	} else if buffer == "MG_CREATED" {
		if curr_state.myPlayer.hp < 0 {
			buffer = "MG_ENDED";
		}
	} else if buffer = "MG_ENDED" {
		instance_destroy(mg);
		buffer = "";
		ds_queue_dequeue(fsm_queue);
		if ds_queue_empty(fsm_queue) {
			for ( var i = 0; i < ds_list_size(players); i++ ) {
				if players[| i].hp > 0 {
					//if ds_queue_size(fsm_queue) == 0 ds_queue_enqueue(fsm_queue, new State(state.end_turn, noone, noone));
					ds_queue_enqueue(fsm_queue, new State(state.choose_act, players[| i], noone));
				}
			}
		}
		var _players_remain = 0;
		for ( var i = 0; i < ds_list_size(players); i++ ) {
			if players[| i].hp > 0 {
				_players_remain++;
			}
		}
		if _players_remain == 0 ds_queue_enqueue(buffer_queue, new State(state.end_loose, noone, noone))
	
	}
	
} else if curr_state.myState == state.use_spell {
	if !instance_exists(curr_state.myPlayer.chosen_spell.obj) {
		_mg = instance_create_layer(0,0,"Instances",curr_state.myPlayer.chosen_spell.obj);
		_mg.creator = self;
	}
	if buffer = "SPELL_MISSED" {
		ds_queue_dequeue(fsm_queue);
		instance_destroy(_mg);
		//curr_state.myPlayer.chosen_spell = noone;
		buffer = "";
	} else if buffer = "SPELL_SUCCESS" {
		// Apply effect
		ds_queue_dequeue(fsm_queue);
		instance_destroy(_mg);
		//curr_state.myPlayer.chosen_spell = noone;
		buffer = "";
		curr_state.myPlayer.chosen_spell.Effect(self, curr_state.myEnnemy)
	}

	//Si la pile est vide => Il n'y a plus de joueurs en attente, on passe aux ennemis
	if ds_queue_size(fsm_queue) == 0 ds_queue_enqueue(fsm_queue, new State(state.end_turn, noone, noone));
	
	
} else if curr_state.myState == state.end_turn {
	ds_queue_dequeue(fsm_queue);
	var _ennemies_remain = 0;
		for (var i = 0; i < ds_list_size(ennemies); i++) {
			if ennemies[| i] != noone and ennemies[| i].hp > 0 {
				_ennemies_remain++;
				var _ennemy = ennemies[| i];
				if ds_list_size(_ennemy.effects) == 0 {
					var _index;
					if players[| 0].hp <= 0 {
						_index = 1;
					} else if players[| 1].hp <= 0 {
						_index = 0;
					} else {
						_index = irandom(1)
					}
					var _player = players[| _index]
					ds_queue_enqueue(fsm_queue, new State(state.defense, _player, _ennemy))
				} else {
					
					show_debug_message("dans obj fsm")
					var _curr_effect = ds_list_find_value(_ennemy.effects, 0);
					_curr_effect.applyEffect(self, _ennemy);
				}
			}
		}
			
		if _ennemies_remain == 0 ds_queue_enqueue(buffer_queue, new State(state.end_win, noone, noone));
	
	
}