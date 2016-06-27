//Create_Helicopters(num_Level)
var num_level = argument[0]
var num_helicopters = num_level / 5

for(var i = 0; i < num_helicopters; i++){
    var heli = instance_create(0, y_helicopter, Helicoptero)
    with(eli){
        sprite_index = spr_helicopter_back
    }
}
x += hsp
y += vsp
