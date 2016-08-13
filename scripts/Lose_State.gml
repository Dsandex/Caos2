if(climb){
    climb = false;
    grounded = false;
   /* vsp = -1;
    hsp = climb_speed * image_xscale * - 1; */
    climbed_building = noone;
}

// Apply gravity.
if(vsp < 10){
    vsp += grav;
}
 
// Floor.
if(place_meeting(x, y+vsp, Floor)){
    while(!place_meeting(x, y + sign(vsp), Floor)){
        y += sign(vsp);
    }
    vsp = 0;
    hsp = 0;
    grounded = true;
    if(!lose){
    
        // Create screen shake and restart some variables.
        lose = true;
        var s = instance_create(0,0,Screen_Shake);
        num_level--;
        vida_global = 100;
        with (s) { alarm[0] = 25; }
        
        // Decrease chance variable. (3 chances per level).
        chances--;
        if(chances >= 0){
            room_goto_transition(Room_Transicion, 0, 180);
        }else{
            room_goto_transition(Room_Menu, 0, 180);
        }
        
        // Change best score file if necessary.
        if(puntaje_global > best_score){
            best_score = puntaje_global;
            file_delete(working_directory + "puntaje.sav");
            ini_open(working_directory + "puntaje.sav");
            ini_write_real("puntaje", "pass", best_score);
            ini_close();
        }             
    } 
}

Current_Sprite(spr_player_dead, 0, 0, retard_value);
if(!instance_exists(GameOver)) instance_create(room_width/2, room_height/2, GameOver);
