/// Check_Advertising
letrero[0] = Letrero_pp;
letrero[1] = Letrero_dass
letrero[2] = Letrero_antena;
letrero[3] = Letrero_perro;
letrero[4] = Letrero_lev;
letrero[5] = Letrero_banco;
letrero[6] = Letrero_verde;

for(var i = 0; i < 7; i++){
    if(instance_exists(letrero[i])){
        if(place_meeting(x, y, letrero[i])){
            return true;
        }
    }
}
return false;
