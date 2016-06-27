/// Building_Size(image_build)
var image_build = argument[0];

// Pequeños.
if(image_build <= 1){
    return "p";
// Medianos.
}else if(image_build > 1 and image_build <= 3){
    return "m";
// Altos.
}else if(image_build > 3 and image_build <= 5){
    return "a";
}
