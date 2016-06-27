/// Play_Track(nature);
var nature = argument[0];

// Play sound.
switch(nature){
    case "attack":
        audio_play_sound(choose(sn_attack_1, sn_attack_2, sn_attack_3), 1, 0);
    break;
}
