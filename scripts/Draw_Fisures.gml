/// Draw_Fisures();
var is_ready_ = false;
var height = sprite_get_height(spr_fisures);

for(var i = 0; i < max_fisures; i++){
    if(ds_list_find_value(max_fisures_array, i)){
        var random_ = irandom_range(0, 3);
        draw_sprite(spr_fisures, random_, x, y - height);
        height -= height;
    }else{
        break;
    }
}

if(ds_list_find_value(max_fisures_array, ds_list_size(max_fisures_array) - 1)) is_ready = true;
return is_ready_;
