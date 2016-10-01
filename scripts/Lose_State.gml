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
        if(instance_exists(Puntaje_Suma)) with Puntaje_Suma instance_destroy();
    
        // Create screen shake and restart some variables.
        lose = true;
        var s = instance_create(0,0,Screen_Shake);
        num_level--;
        vida_global = 100;
        with (s) { alarm[0] = 25; }
        
        // Draw score.
        draw_score = true;
        
        // Decrease chance variable. (3 chances per level).
        alarm[0] = 90;
                   
    } 
}

Current_Sprite(asset_get_index("spr_player" + jugador + "_dead"), 0.06, 0, retard_value);
if(!instance_exists(GameOver)){
    instance_create(room_width/2, room_height/2 - 30, GameOver);
    audio_play_sound(sn_perdistes, 1, 0);
}
