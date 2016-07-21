/// Can_Climb()
var rango = 7;
if(!instance_exists(Edificio)) exit;
if(vsp != 0) exit;

var lista = ds_list_create();
var lista2 = ds_list_create();
var lista3 = ds_list_create();

lista = instance_nearest_list(x, y, Edificio);
var building = point_nearest(Edificio);

// Player is in the ground.

if(grounded or climbed_building){
    switch(image_xscale){
        case -1: // Derecha.
        
            // Can climb.
            if(building.building_life <= 0) exit;         
            if(point_distance(x + 23, y, building.bbox_left, y) <= rango){
                if(!place_meeting(x+23, y, building)) exit;

                   if(grounded){
                       var second_building = Search_Building(building);
                    //   with building color = c_blue;
                       if(position_meeting(building.bbox_left - 1, building.y - 10, second_building)){
                        //  Create_Debug(building.bbox_left - 1, building.y-10);
                          if(building.depth > second_building.depth) exit;
                       }   
                   }
                                     
                if(key_up and (grounded or climbed_building != noone)){
                    climbed_building = building;
                    climb = true;
                    grounded = false;
                    x = climbed_building.bbox_left - 21;
                    return true;
                }
            }            
        break;
        case 1: // Izquierda.                                                
            // Can climb.
            if(building.building_life <= 0) exit;
            if(point_distance(x - 23, y, building.bbox_right, y) <= rango){
                if(!place_meeting(x-23, y, building)) exit;
 
                 if(grounded){
                     var second_building = Search_Building(building);
                     //with building color = c_blue;
                     if(position_meeting(building.bbox_right, building.y - 10, second_building)){
                     //   Create_Debug(building.bbox_right, building.y - 10);
                        if(building.depth > second_building.depth) exit;
                     }
                 }

                 if(key_up and (grounded or climbed_building != noone)){
                    climbed_building = building;
                    climb = true;
                    grounded = false;
                    x = climbed_building.bbox_right + 21;
                    return true; 
                 }
            }    
        break;
    }
}
return false;
