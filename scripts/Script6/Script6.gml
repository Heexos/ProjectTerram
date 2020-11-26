// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function scr_mana_gem_gen(_x, _y, _zone) {
	var _i = 0, _posx = -1, _posy = -1, _gem_posx = -1, _gem_posy = -1, _gemx = -1, _gemy = -1; 
	var _width = _zone[2] - _zone[0] - 64;
	var _height = _zone[3] - _zone[1] - 64;
	_inst = noone;
	// Détermination de la pos du joueur dans la grille
	while _posx == -1 {
		if _x < (_i+1)*_width/4 {
			_posx = _i
		} else _i++;
	}
	_i = 0;
	
	while _posy == -1 {
		if _y < (_i+1)*_height/4 {
			_posy = _i
		} else _i++;
	}
	_i = 0;
	
	// Création du couple de génération de la gem (Grille)
	while _gem_posx == -1 {
		_i = irandom(3);
		if (_posx > _i+1 or _posx < _i-1) {
			_gem_posx = _i;	
		}
	}
	
	while _gem_posy == -1 {
		_i = irandom(3);
		if (_posy > _i+1 or _posy < _i-1) {
			_gem_posy = _i;
		}
	}
	
	// Création du couple de génération de la gem (Pos réelle)
	_gemx = irandom_range(_gem_posx*_width/4, (_gem_posx+1)*_width/4);
	_gemy = irandom_range(_gem_posy*_height/4, (_gem_posy+1)*_height/4);
	
	// Choix de la gem
	if (irandom(9) == 9) {
		_inst = instance_create_layer(_gemx, _gemy, "Instances", obj_mana_gem_big);
	} else {
		_inst = instance_create_layer(_gemx, _gemy, "Instances", obj_mana_gem);
	}
	show_debug_message("Instance (cote script): "+string(_inst) + ", x : "+string(_inst.x)+ ", y : "+string(_inst.y)+", type : "+string(_inst.object_index));
	
	return _inst;
}