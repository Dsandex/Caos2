with(eat_person_id){       
   audio_play_sound(sn_eat_power, 1, 0);                   
   switch(image_index){
       case 0: // Billetes.
           poder_ate = "billetes";
         //  show_debug_message("BILLETES");
           Get_Score(x,y, 200,false);
           with(Player){vida +=1;}
       break;
       case 1: // Bomba.
           Get_Score(x,y, 200,false);
           with(Player){vida +=1;}
          // Get_Score(x,y+10,10,true);
       break;
       case 2: // Bolsa billetes.
           Get_Score(x,y, 200,false);
           with(Player){vida +=1;}
          // Get_Score(x,y+10,10,true);
       break;
       case 3: // Jeringa.
           Get_Score(x,y, 200,false);
           with(Player){vida +=1;}
          // Get_Score(x,y+10,10,true);
       break;
       case 4: // Carro.
           Get_Score(x,y, 200,false);
           with(Player){vida +=1;}
          // Get_Score(x,y+10,10,true);
       break;
       case 5: // Cigarro.
           Get_Score(x,y, 200,false);
           with(Player){vida +=1;}
          // Get_Score(x,y+10,10,true);
       break;
   }                           
}   
