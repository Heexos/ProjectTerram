/// DRAW EVENT of object oCell      
     
draw_set_color(make_color_rgb(42, 42, 42)); // set color to dark gray/black      
     
if (visited) { // if the cell has been visited by the generator      
    draw_set_color(make_color_rgb(45, 0, 45)); // set color to blue      
 
}     
// draw rectangle over span of cell, colored based off the scenerios reached above      
//draw_rectangle(x, y, x + w, y + w, false);     
     
// set the color to white to draw the walls      
draw_set_color(c_white);     
     
if (walls[0]) { // draw top wall
    draw_line(x, y, x + w, y);     
}     
     
if (walls[1]) { // draw right wall
    draw_line(x + w, y, x + w, y + w);     
}     
     
if (walls[2]) { // draw bottom wall
    draw_line(x, y + w, x + w, y + w);     
}     
     
if (walls[3]) { // draw left wall
    draw_line(x, y-1, x, y + w);     
}    