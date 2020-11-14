// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


//Classes

function Spell (_creator, _target) constructor {
	name = "";
	abreviation = name;
	description = "";
	manaCost = 0;
	obj = noone;
	
	Effect = function() {
		
	}
	
}


//Types


function MusicalChairs (_creator, _target) : Spell (_creator, _target) constructor {
	name = "Chaises Musicales";
	abreviation = "Chaises Music.";
	description = "Et ça fait zomba cafew";
	desc_effect = "Echange les ennemis de place";
	manaCost = 25;
	obj = obj_mg_mana_musicchairs;
	
	Effect = function(_creator, _target) {
	ds_list_add(_target.effects, new Turn(_creator, _target));
	}
	

}

function Maze (_creator, _target) : Spell (_creator, _target) constructor {
	name = "Labyrinthe";
	abreviation = name;
	description = "Mais PTDR c'est par où la sortie putain";
	desc_effect = "Rend l'adversaire confus";
	manaCost = 20;
	obj = obj_mg_mana_maze;
	
	Effect = function(_creator, _target) {
		ds_list_add(_target.effects, new Confusion(_creator, _target));
		}
}

function InfiniteStairs (_creator, _target) : Spell (_creator, _target) constructor {
	name = "Infinite Stairs";
	abreviation = "Infty Stairs";
	description = "Stairs to the sky to rejoindre papa Johnny"
	desc_effect = "Fatigue l'adversaire";
	manaCost = 15;
	obj = obj_mg_mana_inftystairs;
	
	Effect = function(_creator, _target) {
		ds_list_add(_target.effects, new Fatigue(_creator, _target));
	
	}	
	
}
