//Helicopter_Foreground
image_xscale = -1
//Si está a una distancia determinada del jugador empieza el ataque
posx = x
posy = y
with(Player){
    if(abs(x-posx)<100){
        //cambiar sprite
        hsp = 0
        if(y > posy)
            vsp = -10
        else
            vsp = 10
        Helicopter_Attack()
    }
}
x += hsp
y += vsp

