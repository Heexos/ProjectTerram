/// CREATE EVENT of object obj_mg_mana_labyrinth      
    

instances = ds_list_create();
random_set_seed(randomize()); // set a random seed to produce unique mazes every time      

w = 32; // px width of each cell (applied to height also to produce square cells)      
   
width = 7*w; // px horizontal span of the maze (width of room) (320)      
height = 7*w; // px vertical span of the maze (height of room) (240)      
     
     
// calculate the number of cells in rows and columns of the maze (total cells = columns * rows)      
cols = floor(width / w); // columns      
rows = floor(height / w); // rows      
     
// cycle through all columns and rows to fill the board will cells      
for (var i = 0; i < cols; i++) {     
    for (var j = 0; j < rows; j++) {     
        /*      
        Create a cell at (i, j) and multiply the coordinates by      
        the cell size to properly position them in the room.      
        If your maze should not start at (0, 0), add an offset to the      
        x and y spawning position (be sure width and height vars take into      
        account this repositioning).      
        e.g. obj = instance_create(100 + (i * w), 100 + (j * w), obj_cell);      
        */     
        obj = instance_create_layer(i * w, j * w, "Instances", obj_cell);     
		ds_list_add(instances, obj);
     
        // pass variables from the generator into the cell      
        obj.i = i; // pass horizontal index      
        obj.j = j; // pass vertical index      
        obj.w = w; // pass width of cell      
        obj.cols = cols; // pass number of columns      
        obj.rows = rows; // pass number of rows rows      
        grid[i, j] = obj; // set index of 2d array to the cell      
    }     
}     
/*      
We've just filled a 2d array, spanning the entire room, with cells      
(room_width/w) * (room_height/w) = 32 * 24 = 768 cell objects      
*/     
     
// cell from which the maze begins generating. [0, 0] is top-left      
current = grid[0, 0];     
     
// create a stack to previously visited cells, used for DFS backtracking      
stack = ds_list_create();   

while instance_number(obj_mg_mana) < 4 {
	do {
		var _x = 32*irandom(6);
		var _y = 32*irandom(6);
	} until collision_point(_x, _y, obj_mg_mana, false, true) == noone;
	var _mana = instance_create_layer(_x, _y, "Instances", obj_mg_mana);
	ds_list_add(instances, _mana);
}

col_purpule = make_colour_rgb(45, 0, 45);
game_zone = [(room_width - 224) / 2, room_height/2, (room_width + 224) / 2+1,  room_height/2+225];
surface = noone;
width_outline = 4;
player = instance_create_layer(16,16,"Instances",obj_mana_player_maze);	
ds_list_add(instances, player);
creator = noone;

alarm[0] = 19*room_speed;


