// Change the sprite to the eat climb sprite.
image_index = 0; // Set image index to 0.
Current_Sprite(argument[0],  .2);
with (eat_person_id){
    alarm[0] = -1;
    alarm[1] = -1;
    instance_destroy();
}
