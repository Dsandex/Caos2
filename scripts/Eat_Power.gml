with(eat_person_id){       
                     
   switch(image_index){
       case 0: // Avion
           Get_Score(x, y, 5, false);
           Get_Score(x, y+10, 2, true);
       break;
       case 1: // Porro.
           Get_Score(x,y,10, false);
           Get_Score(x,y+10,4,true);
       break;
       case 2: // Billetes.
           poder_ate = "billetes";
           show_debug_message("BILLETES");
           Get_Score(x,y,50,false);
           Get_Score(x,y+10,6,true);
       break;
       case 3: // Coca.
           Get_Score(x,y,100,false);
           Get_Score(x,y+10,8,true);
       break;
       case 4: // Bomba.
           Get_Score(x,y,500,false);
           Get_Score(x,y+10,10,true);
       break;
   }                           
}   
