/// Dialogs_Final(room, index);
if(final){
    switch(argument[0]){
        case game_intro:
            switch(argument[1]){
            
                case 0:
                
                    audio_play_sound(sn_puerta, 1, 0);
                    with Building_32 image_index = 1;
                    
                break;
                
                case 4: // Los niños comienzan a caminar a la ciudad.
                    with(Child_Intro){
                        image_speed = .2;
                        if(sprite_index != spr_child1_idle){
                            y = 404;
                        }else{
                            y = 404-6; //416
                        }
                        image_xscale = -1;
                        switch(sprite_index){
                            case spr_child1_idle:
                                sprite_index = spr_child1_run;
                            break;
                            case spr_child2_idle:
                                sprite_index = spr_child2_run;
                            break;
                            case spr_child3_idle:
                                sprite_index = spr_child3_run;
                            break;
                        }
                        hspeed = -2;
                    }
                    
                    can_continue = false;
                break;
                /*case 14:
                    audio_sound_gain(sn_musica_intro, 0, 3000);
                break;*/
                
                case 16:
                    // Aparece Pablo Escobar.
                   //can_continue = false;
                    //with (Control_Intro) { alarm[7] = 30; } // Aparecer Caos. 
                   
    
    
                    instance_create(800, 200, Player); 
                    
                    
                    with(Control_Intro){
                        alarm[0] = -1;
                        alarm[1] = -1;
                        alarm[2] = -1;
                        alarm[3] = -1;
                        alarm[4] = -1;
                    }
                break;

                
                // Pablo ruge!
                case 17:
                
                    // EN OBJETO RAGE QUEDÓ ALGO PROGRAMADO!!
                        background_blend[0] = make_color_rgb(255, 50 ,10);
                        var rage = instance_create(view_wview[0]/2, room_height/2, Rage);
                        //with(rage){ alarm[0] = 45; }
                        //Play_Track("collapse_building");

                        instance_create(Player.x, Player.y, Player_Intro);
                        with(Player){ instance_destroy(); }
                
                        
                        with(Control_Intro){
                             alarm[5] = 150; // Room goto transition.                          
                            //alarm[6] = 1; // Create explosions.
                             alarm[7] = 60; // Move player.                             
                      
                        }
                        with(Control_Intro) sentido = "izquierda";
                       // instance_destroy();
                        with TextBox instance_destroy();
                    
                break;
                

            }
    
        break;    
    }
    final = false;
}


// STEP.
switch(argument[0]){
    case game_intro:
        switch(argument[1]){
            case 4: // Revisa si los niños ya llegaron al limite para pasar a la mamá quien los llama.
                var first_c = instance_nearest(0,0,Child_Intro);
                if(first_c.x < 1200){
                    t++;
                    str = 0;
                    audio_play_sound(sn_dialogo, 1, 1);
                    animar = true;
                    can_continue = true;
                    with(Child_Intro){
                        hspeed = 0;
                        dibujar_exclamacion = true;
                        image_xscale = 1;
                        
                        switch(sprite_index){
                            case spr_child1_run:
                                sprite_index = spr_child1_idle;
                            break;
                            case spr_child2_run:
                                sprite_index = spr_child2_idle;
                            break;
                            case spr_child3_run:
                                  sprite_index = spr_child3_idle;
                            break;
                        }
                        x -= 15;
                    }
                    

                }
            break; 
                       
        }
        
        
                
        // Detener a los niños cuando lleguen a la ciudad.
        if(argument[1] >= 12 and argument[1] <= 14){
            var first_c = instance_nearest(0,0,Child_Intro);
            if(first_c.x < 200){
                with(Child_Intro){
                    hspeed = 0;
                    switch(sprite_index){
                            case spr_child1_run:
                                sprite_index = spr_child1_idle; x -= 15;
                            break;
                            case spr_child2_run:
                                sprite_index = spr_child2_idle; x -= 15;
                            break;
                            case spr_child3_run:
                                  sprite_index = spr_child3_idle; x -= 15;
                            break;
                    }
                }
            }
        }
        
        
    break;
}
