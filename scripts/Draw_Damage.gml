/// Draw_Damage(xx_damage, yy_damage);
var xx = argument[0];
var yy = argument[0];

// Create instance.
var rand_image = irandom_range(0, 5);
var inst = instance_create(xx, yy, spr_damage);
with (inst){
    var rand_index = irandom_range(0, 5);
    image_index = rand_index;
} 
