/// Player_Inputs(os_type)
if(argument[0] == "windows"){
    key_up = keyboard_check(vk_up);
    key_left = keyboard_check(vk_left);
    key_right = keyboard_check(vk_right);
    key_down = keyboard_check(vk_down);
    key_jump = keyboard_check_pressed(vk_space);
}else{
    key_jump = keyboard_check_pressed(ord('Z'));
}
key_attack = keyboard_check_pressed(ord('X'));

if(bbox_left < 5){
    x = 5 + sprite_get_width(sprite_index)/2;
}else if(bbox_right > room_width - 5){
    x = room_width - 5 - sprite_get_width(sprite_index)/2;
}
