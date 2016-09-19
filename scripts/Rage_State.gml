// Increase angry.
if(humor == "normal"){
    if(angry >= 100 and !humor_animation and (climb or grounded or (climbed_building != noone and climbed_building.building_life > 0))){
        
        if(audio_is_playing(sn_rage_music)){
            audio_stop_sound(sn_rage_music);
        }
        
        var asset = asset_get_index("sn_soundtrack_" + string(num_level));
        audio_sound_gain(asset, 0, 3000);
        
        audio_play_sound(sn_rage_music, 1, 1);
        audio_sound_gain(sn_rage_music, 0, 1);
        audio_sound_gain(sn_rage_music, 1, 5000);
        
        background_blend[0] = make_color_rgb(255, 50 ,10);
        if(eating) eating = false;
        if(take_women) take_women = false;
        humor = "angry";
        var inst = instance_create(0,0,Screen_Shake);
        var rage = instance_create(room_width/2, room_height/2, Rage);
        with inst alarm[0] = 45;
        with rage alarm[0] = 45;
        save_vida = vida;
        humor_animation = true;
        scale_change = image_xscale;
        room_speed = 60;
        angry = 200;
        /*movespeed = 6;
        jumpspeed = 20;
        climb_speed = 6;
        grav = 2; */
        y_change = y;
        Play_Track("trans");
    }/*else{
        angry += 10/30;
    }*/
}else{
    if(instance_exists(Rage)){    
        hsp = 0;
        y = y_change;
        image_xscale = scale_change;
        if(grounded or (climbed_building != noone and !climb)){
            var asset = asset_get_index("spr_player" + jugador + "_ground_" + humor + "_idle");
            sprite_index = asset;
            image_index = 0;
        }else if(climb){
            var asset = asset_get_index("spr_player" + jugador + "_climb_" + humor + "_up");
            sprite_index = asset;
            image_index = 3;
        }
    }
    vida = save_vida;
    angry -= (10/30);
    if(angry < 0){
    
        var asset = asset_get_index("sn_soundtrack_" + string(num_level));
        audio_sound_gain(sn_rage_music, 0, 3000);
        audio_sound_gain(asset, 1, 5000);
        
        humor = "normal";
        humor_animation = false;
        if(eating) eating = false;
        if(take_women) take_women = false;
        room_speed = 30;
       /* movespeed = 5;
        jumpspeed = 15;
        climb_speed = 3;*/
        grav = 1;
        background_blend[0] = c_white;
    }
}
