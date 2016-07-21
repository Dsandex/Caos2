// Move the player.
Player_Inputs("");

// show_debug_message(take_women);
if(climb){
    //show_debug_message("climb grounded:" + string(grounded));
    
    // Set hsp in 0.
    hsp = 0;
    
    // Jump from buildings.
    if(key_jump and !instance_exists(Rage)){
    
        // Take women accesors.
        sprite_index = asset_get_index("spr_player_jump_" + humor + "_attack");
        image_speed = 0;
        image_index = 3;
        
        // Change variables.
        climb = false;
        grounded = false;
        vsp = -jumpspeed;
        Jump_Hspeed();
        
        // Jump sprite.
        var asset = asset_get_index("spr_player_jump_" + humor + "_idle");
        Current_Sprite(asset, 0, irandom_range(0,2));
        
        climbed_building = noone;


        
    // Climb the building.
    }else if(key_up and !eating){
        
        // Process Up Building Commands.
        if(Going_Up_Checker()) exit;
        
        // Take women accesor.
        if(take_women) image_speed = .2;
        
        // Destroy advertising.
        if(key_attack and !take_women){
                
            // Change sprite.
            var asset = asset_get_index("spr_player_climb_" + humor + "_attack");
            Current_Sprite(asset, 0, 1, retard_value);
            
            // If place meeting with the avertising.
            if(place_meeting(x, y, Letrero_Up)){
                var letrero = instance_nearest(x+10, y+15, Letrero_Up);
                with(letrero){
                    // Attack sound.
                    Play_Track("attack");
                    instance_create(letrero.x, letrero.y, Explosion);
                    instance_destroy();
                    //vida -= 1;
                }
                
            }
        }else{
            // Change sprite. Going up.
            var asset = asset_get_index("spr_player_climb_" + humor + "_up");
            Current_Sprite(asset, .15);
        }
        
    // Go down.
    }else if(key_down and !eating){
    
        if(!place_meeting(x, bbox_bottom, Letrero_Up)){
            y += climb_speed;
        }
        
        // Change sprite.
      //  var asset = asset_get_index("spr_player_climb_" + humor + "_idle");
        var asset = asset_get_index("spr_player_climb_" + humor + "_up");
        Current_Sprite(asset, .2);
        
        // Take women accesor.
        if(take_women) image_speed = .2;
             
        if(bbox_bottom >= 413){
            climb = false;
        //    show_debug_message('here 85'); 
            climbed_building = noone;
            grounded = true;
        }else{
            BBox_Change();
        }
        
       // Down attack.
       if(key_attack and !take_women){
              
           // Change the sprite.
           var asset = asset_get_index("spr_player_climb_" + humor + "_attack");
           Current_Sprite(asset, 0, 2, retard_value);
           
           // Building recieve damage down.   
           if(!place_meeting(x, bbox_bottom, Letrero_Up)){
               if(climbed_building != noone){
                  Recieve_Damage("down", climbed_building);
               }
           }else{
                var letrero = instance_nearest(x, bbox_bottom, Letrero_Up);
                with(letrero){
                    // Attack sound.
                    Play_Track("attack");
                    instance_create(letrero.x, letrero.y, Explosion);
                    instance_destroy();
                    //vida -= 1;
                }
           }
        }
        
    }else{
    
        if(sprite_index != asset_get_index("spr_player_climb_" + humor + "_idle")){
            var asset = asset_get_index("spr_player_climb_" + humor + "_idle");
            Current_Sprite(asset, 0, irandom_range(0,6));    
        }
        
        // Take women accesor.
        if(take_women) image_speed = 0;
        
        // Destroy part of the building.
        if(key_attack and !take_women){
                         
            // Player's aside attack.   
            if(key_left and image_xscale == -1 or key_right and image_xscale == 1){
                switch(image_xscale){
                    // Right.
                    case 1:
                        if(key_right) Current_Sprite(asset_get_index("spr_player_climb_" + humor + "_attack"), 0, 0, retard_value);
                        Attack_Other();
                    break;
                    // Left.
                    case -1:
                        if(key_left) Current_Sprite(asset_get_index("spr_player_climb_" + humor + "_attack"), 0, 0, retard_value);
                        Attack_Other();
                    break;
                }
                
            // Player attack front.
            }else{
            
                // Is a person in there?
                if(Can_Eat("climb") and !instance_exists(Rage) and !take_women){    
                
                      if(object_ind == "Soldado" or object_ind == "Child"){
                         Eat_Person(asset_get_index("spr_player_climb_" + humor + "_eat")); 
                         eating = true;
                      
                      }else if(object_ind == "Women"){
                      
                         Eat_Person(asset_get_index("spr_player_climb_" + humor + "_women"));
                         take_women = true;
                         Recieve_Damage("front", climbed_building);
                         eating = false;
                         
                      }else if(object_ind = "Poder"){
                      
                         
                         Recieve_Damage("front", climbed_building);
                         Eat_Power();                        
                         Eat_Person(asset_get_index("spr_player_climb_" + humor + "_eat"));
                         eating = true;

                      }
                    
                // No, is not.
                }else{            
                   
                    Destroy_Enemy();
                    var asset = asset_get_index("spr_player_climb_" + humor + "_attack");
                    Current_Sprite(asset, 0, 3, retard_value);
                    Recieve_Damage("front", climbed_building); 

                } 
            }
        }
    }
}else{

    // Process the x inputs.
    if(grounded or climbed_building != noone){
    
        // Create run women.
        if(take_women){
            Get_Score(x, y, 2, false);
            take_women = false;
            instance_create(x, y-40, Women_Run);
        }
        
        
        move = (key_left*-1) + key_right;    
        if(!eating and sprite_index != asset_get_index("spr_player_ground_" + humor + "_attack")) hsp = move * movespeed;
        else hsp = 0;
        
        if(hsp != 0){
            image_xscale = -sign(hsp);
            var asset = asset_get_index("spr_player_ground_" + humor + "_walk");
            Current_Sprite(asset, .2);
        }else{
            var asset = asset_get_index("spr_player_ground_" + humor + "_idle");
            if(sprite_index != asset){
                Current_Sprite(asset, 0, irandom_range(0,4));
            }
        }
    }
    
    
    // Player wants to climb a building.    
    if(Can_Climb()) exit; // esto estaba así:

    
    // Jump!
    if(key_jump and (grounded or climbed_building != noone) and !instance_exists(Rage)){
        eating = false;
        vsp = key_jump * -jumpspeed;
        key_jump = 0;
        climbed_building = noone;
       // show_debug_message('here 285'); 
        var asset = asset_get_index("spr_player_jump_" + humor + "_idle");
        Current_Sprite(asset, 0, irandom_range(0,2));
        grounded = false;
        
        // aqui lo esta haciendo bien.
    }else{
        // Apply gravity!
        if(vsp < 10){
            vsp += grav;
        }
    }
        
     // Vertical Collisions.
    
    // Floor.
    if(place_meeting(x, y+vsp, Floor)){
            while(!place_meeting(x, y + sign(vsp), Floor)){
                y += sign(vsp);
            }
            vsp = 0;
            if(!grounded) Play_Track("air_punch");
            grounded = true;
    }
    
    // Building.
    if(climbed_building != noone){
        if(place_meeting(x, y+vsp, climbed_building)){
            while(!place_meeting(x, y + abs(sign(vsp)), climbed_building)){
                y += abs(sign(vsp));
            }
            vsp = 0;
        }else{
            climbed_building = noone;
            vsp = -jumpspeed;
            Jump_Hspeed();
            var asset = asset_get_index("spr_player_jump_" + humor + "_idle");
            Current_Sprite(asset, 0, irandom_range(0,2));
        }
    }
    

 
    // If the player attack.
    if(key_attack){
        if(grounded or climbed_building != noone){
        
            // Up attack.
            if(key_up){          
                // Eat in building person.
                if(Can_Eat("floor_up")){
                    
                    Eat_Person(asset_get_index("spr_player_ground_" + humor + "_eat_up"));
                    eating = true;

                    if(object_ind == "Women"){ 
                        instance_create(x, 375, Women_Run); 
                        eating = false;
                    }
                // Check if there is a enemy to destroy.
                }else{
                    Current_Sprite(asset_get_index("spr_player_ground_" + humor + "_attack"), 0, 2, retard_value);
                }

            // Down attack.                
            }else if(key_down){

                if(Can_Eat("floor_down")){
                    Eat_Person(asset_get_index("spr_player_ground_" + humor + "_eat_down"));
                    eating = true;
                    
                }else{
                    Current_Sprite(asset_get_index("spr_player_ground_" + humor + "_attack"), 0, 1, retard_value);
                }
                 
            // Front attack.
            }else{
                Current_Sprite(asset_get_index("spr_player_ground_" + humor + "_attack"), 0, 0, retard_value);
            }
            
        }else{
            if(!take_women){
                if(image_xscale == 1 and key_right or image_xscale == -1 and key_left) Current_Sprite(asset_get_index("spr_player_jump_" + humor + "_attack"), 0, 0, retard_value);
                if(key_up) Current_Sprite(asset_get_index("spr_player_jump_" + humor + "_attack"), 0, 1, retard_value);
                else if(key_down) Current_Sprite(asset_get_index("spr_player_jump_" + humor + "_attack"), 0, 2, retard_value);
                else if(image_xscale == 1 and key_left or key_right and image_xscale == -1) Current_Sprite(asset_get_index("spr_player_jump_" + humor + "_attack"), 0, 3, retard_value);
            }
        }
        
        
        // Destroy an enemy if there is one.
        Destroy_Enemy();
    }
    
    // Player is on the roof but wants to return to its climb state.
    Return_Climb();  
}
//show_debug_message(y);
//show_debug_message('take_women' + string(take_women));
//show_debug_message('climb' + string(climb));
//show_debug_message('grounded' + string(grounded));
//show_debug_message('eat' + string(eating));


// Rage State.
Rage_State();


// Life.
if(vida <= 0) state = Lose_State;
