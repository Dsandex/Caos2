/// Attack_Other(image_xscale)
Destroy_Enemy();

switch(image_xscale){

    // Right.
    case -1:
        var other_building = instance_nearest(bbox_left + 8, y - 9, Edificio);
        if(position_meeting(bbox_left + 8, y - 9, other_building)){
            Recieve_Damage("other", other_building);
        }
    break;
    
    // Left.
    case 1:
        var other_building = instance_nearest(bbox_right - 8, y - 9, Edificio);
        if(position_meeting(bbox_right - 8, y - 9, other_building)){
            Recieve_Damage("other", other_building);
        }   
    break;
}
