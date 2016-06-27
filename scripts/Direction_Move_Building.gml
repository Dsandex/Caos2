/// Move_Building
var near_edif = argument[0];

// Move Left.
if(position_meeting(bbox_left, bbox_top, near_edif)){
    return -1;
// Move right.
}else if(position_meeting(bbox_right, bbox_top, near_edif)){
    return 1;
// Don't Move.
}else{
    return 0;
}
