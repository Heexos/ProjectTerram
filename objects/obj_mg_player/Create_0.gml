/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
spd = 9;
invincible = false;
invulnerability = .2;

controller = instance_nearest(0,0,obj_controller_fsm);
player = controller.curr_state.myPlayer;
ennemy = controller.curr_state.myEnnemy;
