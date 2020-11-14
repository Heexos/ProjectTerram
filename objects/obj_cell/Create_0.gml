/// CREATE EVENT of object oCell      
     
var w, cols, rows, i, j; // define vars. Values are passed in through object oMaze when created      
     
/*      
Each cell has four walls associated with it      
    wall[0] = top wall, wall[1] = right side wall, wall[2] = bottom wall, wall[3] = left side wall      
All four walls drawn together will produce an outline of a square      
If wall[i] = false, the wall will not be drawn. By default, all four should be      
*/     
for (var i = 0; i < 4; i++) {     
    walls[i] = true;     
}     
     
// whether or not the cell has been visited yet and is a part of the maze      
visited = false;    