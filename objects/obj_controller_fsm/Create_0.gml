/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
randomize();


fsm_queue = ds_queue_create();
ds_queue_enqueue(fsm_queue, new State(state.start, noone, noone));
curr_state = ds_queue_head(fsm_queue);

buffer_queue = ds_queue_create();

/*players_to_generate = [obj_player1, obj_player2];
players = [noone, noone];
ennemies_to_generate = [obj_chicken, obj_chicken, obj_chicken, obj_chicken];
ennemies = [noone, noone, noone, noone];*/

players_to_generate = ds_list_create();
ds_list_add(players_to_generate, obj_player1, obj_player2);
players = ds_list_create();

ennemies_to_generate = ds_list_create();
ds_list_add(ennemies_to_generate, obj_chicken, obj_chicken, obj_chicken, obj_chicken);
ennemies = ds_list_create();

ennemies_pos = [{xx: 575, yy: 120}, {xx: 650, yy: 120}, {xx: 650, yy: 180}, {xx: 575, yy: 180}]

healthbars = ds_list_create();

buffer = "";
buffer_state = noone;
mg = noone;
playingPlayer = noone;

targeted = 0;

audio_stop_all();
audio_play_sound(Giorno_s_Theme_il_vento_d_oro__8_Bit_VRC6____JoJo_s_Bizarre_Adventure_Golden_Wind, 1, true)