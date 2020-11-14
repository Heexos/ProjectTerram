/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
kill_me = false;

margin = 15;
surface = noone;
col_purpule = make_colour_rgb(45, 0, 45);
game_zone = [(room_width - 320) / 2, room_height/2, (room_width + 320) / 2,  room_height*11/12];
subim_arrow_left = 0;
subim_arrow_right = 0;
subim_arrow_down = 0;
subim_arrow_up = 0;
scr = 0;
subim_anim = 0;
timer_progress = 0;

end_game = false;
game_failed = false;

active = false;
next = noone;

max_score = 50;
scr_percentage = 0;


fill_height = sprite_get_height(spr_bar_fill);
fill_width = sprite_get_width(spr_bar_fill);

bar_top = 0;
bar_height = fill_height;

anim_progress = 0;
j = 0;

hh = sprite_get_height(spr_bar_fill);
ww = sprite_get_width(spr_bar_fill);

mySound = noone;