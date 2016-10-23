/// Dialogs_Features(room, index);
var room_ = argument[0];
var t = argument[1];

if(animar){
    switch(room_){
        case game_intro:
            switch(t){
                case 1:
                    
                    // Crear a Carlos.
                    instance_create(1395, 399, Child_Intro);

                
                break;
                case 5:
               // 1322
                    // Crear a Carlos y Julián fuera de la casa.
                    instance_create(1369, 399, Child_Intro);
                    var julian = instance_create(1369+45, 399, Child_Intro);
                    with(julian){
                        sprite_index = spr_child1_idle;
                        y = 394;
                     }
                    
                break;
                
                case 7: // Crear mujer.
                    var women = instance_create(1392, 394, Child_Intro);
                    with(women) sprite_index = spr_women_idle;
                break;
                
                case 13: // Destruir mujer, cerrar la puerta, niños siguen caminando.
                    var women = instance_nearest(1395, 399, Child_Intro);
                    with women instance_destroy();
                    with Building_32 image_index = 0;
                    
                    
                    with(Child_Intro){
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
                        x += 15;
                        dibujar_exclamacion = false;
                        exclamacion = false;
                        with Exclamacion instance_destroy();
                        image_speed = .2;
                        image_xscale = -1;
                        hspeed = -3;
                    }
                    
                    
                    with (Control_Intro){
                        seguir_ninos = true;
                    }
                break;
                // Empiezan a salir personas corriendo.
                case 19:
 
                    audio_sound_gain(sn_soundtrack_1, 1, 4000);
                    /*var rage = instance_create(view_wview[0]/2, room_height/2, Rage);
                    with(rage){ alarm[0] = 45; }*/
                      with(Control_Intro) { alarm[0] = 1; }
                   
                break;
                
                // Explosiones.
                case 20:
                    with(Control_Intro){ alarm[3] = 1; }
                    with(Child_Intro){ dibujar_exclamacion = true; }
                break;
                
                // Soldados, tanques y helicopteros.
                case 21:
                    with(Control_Intro){ 
                        alarm[1] = 1; 
                        alarm[2] = 1;
                        alarm[4] = 1;
                    }
                    audio_play_sound(sn_helicopter_front, 0, 1);

                break;
                
                case 23:
                    can_continue = false;
                break;

                case 24:
                
                    // Los niños corren de Pablo Escobar.
                    with(Child_Intro){
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
                        hspeed = -3;
                        x += 15;
                        image_speed = .2;
                        image_xscale = -1;
                    }
                    
                    with(Control_Intro){ 
                     //   alarm[1] = 1; 
                      //  alarm[2] = 1;
                       // alarm[4] = 1;
                    }
                    /*can_continue = false;
                    with(Player){
                        controles = "intro";
                    }*/
                                                        
                break;  
             
                
                
            }
        break;
    }
    animar = false;
}
