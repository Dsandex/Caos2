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
        lose = true;
        var s = instance_create(0,0,Screen_Shake);
        num_level--;
        vida_global = 100;
        room_goto_transition(Room_Transicion, 0, 30);
        with (s) { alarm[0] = 25; };
    }
}

Current_Sprite(spr_player_dead, 0, 0, retard_value);
if(!instance_exists(GameOver)) instance_create(room_width/2, room_height/2, GameOver);
