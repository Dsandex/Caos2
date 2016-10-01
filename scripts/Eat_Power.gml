with(eat_person_id){       
   audio_play_sound(sn_eat_power, 1, 0);                   
   switch(image_index){
       case 0: // Avion
           Get_Score(x, y, 200, false);
          // Get_Score(x, y+10, 2, true);
       break;
       case 1: // Porro.
           Get_Score(x,y, 200, false);
         //  Get_Score(x,y+10,4,true);
       break;
       case 2: // Billetes.
           poder_ate = "billetes";
         //  show_debug_message("BILLETES");
           Get_Score(x,y, 200,false);
        //   Get_Score(x,y+10,6,true);
       break;
       case 3: // Coca.
           Get_Score(x,y, 200,false);
         //  Get_Score(x,y+10,8,true);
       break;
       case 4: // Bomba.
           Get_Score(x,y, 200,false);
          // Get_Score(x,y+10,10,true);
       break;
   }                           
}   
