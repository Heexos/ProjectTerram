/// STEP EVENT of object oMaze      
     
// the statement within the brackets will be executed until the stack is empty (until)      
do {     
    current.visited = true; // the current, active cell has been visited      
     
    // the destination cell, where we head next, has yet to be determined      
    next = undefined;     
     
    // check the current cell's neighbors to determine if we can visit one      
    with(current) {     
        other.next = checkNeighbors();     
    }     
     
    // if the cell can move adjacently; if we have an unvisited neighbor      
    if (next != undefined) {     
        next.visited = true; // mark our neighbor as visited in preparation of the move      
        ds_list_add(stack, current); // add the current, active cell to the stack      
        removeWalls(current, next); // remove the walls between us and our neighbor      
        current = next; // update active cell to the neighboring cell      
    } else if (!ds_list_empty(stack)) { // if we have no unvisited neighbors and the stack isn't empty      
        // pop a cell off the top of the stack and visit it      
        current = ds_list_find_value(stack, ds_list_size(stack) - 1);     
        ds_list_delete(stack, ds_list_size(stack) - 1); // remove the cell from the stack      
    }     
}     
until(ds_list_empty(stack)); // the stack is empty; all cells have been visited      
 
 
 
if instance_number(obj_mg_mana) <= 0 creator.buffer = "SPELL_SUCCESS";