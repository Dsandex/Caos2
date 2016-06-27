//Cuando muere un edificio destruye las ventanas que estan colisionando con el

var xx = argument[0];//posicion x ventana
var yy = argument[1];//posicion y ventana
    var soldier = instance_nearest(xx, yy, Soldado);
    var child = instance_nearest(xx, yy, Child);
    var women = instance_nearest(xx, yy, Women);
    if(position_meeting(xx, yy, soldier)){
        with soldier instance_destroy();
    }
    if(position_meeting(xx, yy, child)){
        with child instance_destroy();
    }
    if(position_meeting(xx, yy, women)){
        with women instance_destroy();
    }
    instance_destroy();
