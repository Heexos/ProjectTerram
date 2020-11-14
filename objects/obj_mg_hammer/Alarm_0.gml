/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
active = false;
end_game = true;
subim_anim = 2;
alarm[1] = .5*room_speed;
show_debug_message(scr);
scr_percentage = scr/max_score;
if scr_percentage > 1 scr_percentage = 1;