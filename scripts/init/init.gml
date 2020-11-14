// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
col_purpule = make_colour_rgb(45, 0, 45);

enum state {
	start,
	choose_act,
	choose_spell,
	choose_item,
	target_attack,
	target_obj,
	target_spell,
	use_spell,
	flee,
	attack,
	defense,
	end_flee,
	end_loose,
	end_win,
	end_turn,
	
}

enum range {
	cross,
	line,
	column,
	single,
	
}

enum keys {
	left,
	right,
	up,
	down,
}

function State(_state, _player, _ennemy) constructor {
	myState = _state;
	myPlayer = _player;
	myEnnemy = _ennemy;
}

function Weapon(_obj, _dmg, _name, _pattern) constructor {
	obj = _obj;
	dmg = _dmg;
	name = _name;
	pattern = _pattern;
}