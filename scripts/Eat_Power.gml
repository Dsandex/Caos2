with(eat_person_id){                         
   switch(image_index){
       case 0:
           Get_Score(x, y, 5, false);
           Get_Score(x, y+10, 2, true);
       break;
       case 1:
           Get_Score(x,y,10, false);
           Get_Score(x,y+10,4,true);
       break;
       case 2:
           Get_Score(x,y,50,false);
           Get_Score(x,y+10,6,true);
       break;
       case 3:
           Get_Score(x,y,100,false);
           Get_Score(x,y+10,8,true);
       break;
       case 4:
           Get_Score(x,y,500,false);
           Get_Score(x,y+10,10,true);
       break;
   }                           
}   
