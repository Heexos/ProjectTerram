// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//Classes

function Item (_creator) constructor {
	name = "";
	description = "";
	manaRestore = 0;
	healthRestore = 0;
	
	Effect = function() {
		
	}
	
}


//Types


function Sandwich (_creator) : Item (_creator) constructor {
	name = "Sandwich";
	description = "Et tu pense que t'a réussi ta vie ptdr";
	healthRestore = 10;
}

function RepasCrous (_creator) : Item (_creator) constructor {
	name = "Menu CROUS à 1e";
	description = "Quel plaisir d'être pauvre";
	healthRestore = 10000;
	manaRestore = 10000;
}

function Absinthe (_creator) : Item (_creator) constructor {
	name = "Absinthe";
	description = "Cette potion sort tout droit du ciel";
	manaRestore = 10;
}