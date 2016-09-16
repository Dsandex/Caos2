/// Check_Tutorial(keyword)
if(room == game_tutorial){ 
    
   switch(argument[0]){
       case "MOVE RIGHT":
         with(Control_Tutorial){
            if(tutorial[i] == "MOVE RIGHT"){
                move_right = true;
            }
         }
       break;
       case "MOVE LEFT":
         with(Control_Tutorial){
            if(tutorial[i] == "MOVE LEFT"){
                move_left = true;
            }
         }
       break;
       case "JUMP!":
            with(Control_Tutorial){
                if(tutorial[i] == "JUMP!"){
                    jump = true;
                }
             }
       break;
       case "ATTACK!":
           with(Control_Tutorial){
                if(tutorial[i] == "ATTACK!"){
                    attack = true;
                }
             }
       break;
       case "ATTACK DOWN!":
           with(Control_Tutorial){
                if(tutorial[i] == "ATTACK DOWN!"){
                    floor_down_attack  = true;
                }
             }
       break;
       case "ATTACK UP!":
           with(Control_Tutorial){
                if(tutorial[i] == "ATTACK UP!"){
                    floor_up_attack  = true;
                }
             }
       break;
       case "ATTACK DOWN JUMPING!":
           with(Control_Tutorial){
                if(tutorial[i] == "ATTACK DOWN JUMPING!"){
                    jump_down_attack = true;
                }
             }
       break;
       case "ATTACK UP JUMPING!":
           with(Control_Tutorial){
                if(tutorial[i] == "ATTACK UP JUMPING!"){
                    jump_up_attack = true;
                }
             }
       break;
       case "ATTACK FRONT JUMPING!":
           with(Control_Tutorial){
                if(tutorial[i] == "ATTACK FRONT JUMPING!"){
                    jump_front_attack = true;
                }
             }
       break;
       case "ATTACK BACK JUMPING!":
           with(Control_Tutorial){
                if(tutorial[i] == "ATTACK BACK JUMPING!"){
                    jump_back_attack = true;
                }
             }
       break;
       case "CLIMB THE BUILDING!":
           with(Control_Tutorial){
                if(tutorial[i] == "CLIMB THE BUILDING!"){
                    climb_building = true;
                    mouse_clear(ord("Q"));
                }
             }
       break;   
       
       case "GO UP!":
           with(Control_Tutorial){
                if(tutorial[i] == "GO UP!"){
                    up_building = true;
                }
             }
       break;  
       case "GO DOWN!":
           with(Control_Tutorial){
                if(tutorial[i] == "GO DOWN!"){
                    down_building = true;
                }
             }
       break; 
       case "HIT THE BUILDING!":
           with(Control_Tutorial){
                if(tutorial[i] == "HIT THE BUILDING!"){
                    hit_building = true;
                }
             }
       break;
       case "HIT THE BUILDING WHILE GOING DOWN!":
           with(Control_Tutorial){
                if(tutorial[i] == "HIT THE BUILDING WHILE GOING DOWN!"){
                    hit_down_building = true;
                }
             }
       break;
       case "JUMP OFF THE BUILDING!":
           with(Control_Tutorial){
                if(tutorial[i] == "JUMP OFF THE BUILDING!"){
                    jump_building = true;
                }
             }
       break;
   }   
} 


/*
tutorial[0] = "TUTORIAL";
tutorial[1] = "MOVE RIGHT";
tutorial[2] = "MOVE LEFT";
tutorial[3] = "JUMP!";
tutorial[4] = "ATTACK!";
tutorial[5] = "ATTACK DOWN!";
tutorial[6] = "ATTACK UP!";
tutorial[7] = "ATTACK DOWN JUMPING!";
tutorial[8] = "ATTACK UP JUMPING!";
tutorial[9] = "ATTACK FRONT JUMPING!";
tutorial[10] = "ATTACK BACK JUMPING!";


tutorial[11] = "CLIMB THE BUILDING!";
//tutorial[12] = "JUMP UP ATTACK!";
//tutorial[13] = "JUMP UP ATTACK!";


move_right = false;
move_left = false;
attack = false;
jump = false;

floor_down_attack = false;
floor_up_attack = false;

jump_up_attack = false;
jump_down_attack = false;
jump_front_attack = false;
jump_back_attack = false;

climb_building = false;
hit_building = false;
up_building = false;
down_building = false;
jump_building = false;

