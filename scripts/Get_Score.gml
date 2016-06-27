/// Get_Score(x, y, score, [vida: true; score: false]);
var p = instance_create(argument[0], argument[1], Puntaje);
get_score = argument[2];
vida_bool_g = argument[3];
if(vida_bool_g){
    color_puntaje = make_color_rgb(204,0,41);
}else{
    color_puntaje = make_color_rgb(0,254,255);
}

with(p){
    puntaje = get_score;
    puntaje_color_local = color_puntaje;
    vida_bool = vida_bool_g;
}
