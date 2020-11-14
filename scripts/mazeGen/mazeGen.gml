// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function checkNeighbors(){
	/// checkNeighbors();      
     
	/*      
	    This script is called by a cell to get reference to its      
	    neighboring cells and whether or not they have been visited.      
	    If possible, it will return a random unvisited, neighboring cell.      
	*/     
     
	var neighbors, n; // declare temp vars      
	neighbors = ds_list_create(); // create a list to hold the cell's neighbors      
	n[0] = index(i, j - 1); // get the neighbor above us      
	n[1] = index(i + 1, j); // get the neighbor to the right of us      
	n[2] = index(i, j + 1); // get the neighbor below us      
	n[3] = index(i - 1, j); // get the neighbor to the left of us      
     
	/* if there is a neighbor, n, and it has not been visited, add      
	it to the list of avaliable neighbors. Repeat for right, left, above, below*/     
	for (var c = 0; c < array_length(n); c++) {     
	    if (n[c] != undefined) {     
	        if (!n[c].visited) {     
	            ds_list_add(neighbors, n[c]);     
	        }     
	    }     
	}     
     
	// check if we added any neighbors to our list (it's not empty)      
	if (!ds_list_empty(neighbors)) {     
	    ds_list_shuffle(neighbors); // shuffle the list of neighbors      
	    var n = ds_list_find_value(neighbors, 0); // grab the top neighbor      
	    ds_list_destroy(neighbors); // destroy the list of neighbors      
	    return n; // return the randomly-selected neighbor      
	} else {     
	    ds_list_destroy(neighbors); // destroy the list of neighbors      
	    return undefined; // return undefined, we have no neighbors      
	}    
}

function index(i,j) {
	/// index(i,j);      
     
	/*      
	    This script allows us to pass in coordinates and access      
	    the appropriate cell at the given index, if it exists      
	*/     

	// return undefined if the index is out of our array      
	if (i < 0 || j < 0 || i > cols - 1 || j > rows - 1) {     
	    return undefined;     
	}     
     
	return obj_mg_mana_maze.grid[i, j]; // otherwise, return the necessary cell   
	
}

function removeWalls(a,b) {
	/// removeWalls(a, b);      
     
	/*      
	    This script is used to remove walls between the currently      
	    active cell and the neighboring cell about to be visited      
	*/     
     
	var _x, _y; // declare temp vars      
 
     
	/* subtract cell A's horizontal position from B's to determine whether      
	the active cell visited the left neighbor (-1), right neighbor (1),      
	or is parallel (0) */     
	_x = a.i - b.i;     
     
	if (_x == 1) { // if the previously-actived cell visited a neighbor to the right      
	    a.walls[3] = false; // remove left wall from cell A      
	    b.walls[1] = false; // remove right wall from cell B      
	} else if (_x == -1) { // if the previously-actived cell visited a neighbor to the left      
	    a.walls[1] = false; // remove right wall from cell A      
	    b.walls[3] = false; // remove left wall from cell B      
	}     
     
	/* subtract cell A's vertical position from B's to determine whether      
	the active cell visited the above neighbor (-1), below neighbor (1),      
	or is parallel (0) */     
	_y = a.j - b.j;     
     
	if (_y == 1) { // if the previously-actived cell visited a neighbor above      
	    a.walls[0] = false; // remove top wall from cell A      
	    b.walls[2] = false; // remove bottom wall from cell B      
	} else if (_y == -1) { // if the previously-actived cell visited a neighbor below      
	    a.walls[2] = false; // remove bottom wall from cell A      
	    b.walls[0] = false; // remove top wall from cell B      
	}    
	
}