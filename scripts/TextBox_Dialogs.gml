/// TextBox_Dialogs(room, visit, character, index);
var room_ = argument[0];
var text = 0;

ds_list_clear(text);
ds_list_clear(cara);

switch(room_){
    case game_intro:                               
        // Fill text.
        can_skip = false;
        
        // Dialogo entre Goro e Ikka.
        ds_list_add(text, "Ikka: ¿Por que me has traído a este lugar?"); // 0
        ds_list_add(text, "Goro: Ikka...quiero que prestes mucha atencion a lo que voy#a decirte."); // 1
        ds_list_add(text, "Ikka: ..."); // 2
        ds_list_add(text, "Goro: Hace mucho tiempo, en el principio... entre las aguas#de la laguna de Iguaque sumergio nuestra madre... Bachue.");  // 3
        ds_list_add(text, "Goro: Ella era una madre buena, protectora y carinosa. Nos#enseno a cazar, trabajar las piedras, y a orar.");  // 4
        ds_list_add(text, "Goro: Cuando vio que sus hijos eran lo suficientemente#grandes, abandono la tierra, pero antes, les dio un regalo.");  // 5
        ds_list_add(text, "Goro: Con su poder, construyo tres instrumentos de oro, para#que estos fueran utilizados en el ritual de El Dorado.");  // 6
        ds_list_add(text, "Goro: Estos instrumentos, tenian la capacidad de crear#una conexion espiritual con nuestros dioses durante el ritual.");  // 7
        ds_list_add(text, "Goro: Y sin ellos...es imposible llevarlo a cabo, y por#lo tanto, no hay manera de nombrar un nuevo Zipa.");  // 8
        ds_list_add(text, "Ikka: ¿Por que me cuentas esto?");  // 9
        ds_list_add(text, "Goro: ...");  // 10
        
        // < EXPLOSIONES >
        
        // Soldado entra a la escena.
        ds_list_add(text, "General: Mi senor! Lo necesitamos en la entrada sur de#aldea!"); // 11
        ds_list_add(text, "Goro: ¿¡Que esta sucediendo Tibata!?"); // 12 
        ds_list_add(text, "General (Tibata): ¡Los hijos de Huitaca estan atacando la#aldea, tal cual lo predijo Ciasua!"); // 13
        ds_list_add(text, "Goro: ¡Tibata, reune a todas las tropas del norte, y regresa#al lugar del asedio!"); // 14
        ds_list_add(text, "General (Tibata): ¡Si mi senor!"); // 15
        
        // Dialogo final Goro e Ikka.
        ds_list_add(text, "Ikka: Tio, ¿¡que esta sucediendo!?"); // 16
        ds_list_add(text, "Goro: Ikka, no tenemos mas tiempo, ¡debes partir ahora#mismo!"); // 17
        ds_list_add(text, "Goro: ¡Toma este libro, y corre al norte, en donde no puedas#ser encontrado! ¡Con el libro sabras que hacer!"); // 18
        
        //FIN
        
        // Fill caras.
        ds_list_add(cara, spr_cara);
        ds_list_add(cara, spr_cara_goro);
        ds_list_add(cara, spr_cara);
        ds_list_add(cara, spr_cara_goro);
        ds_list_add(cara, spr_cara_goro);
        ds_list_add(cara, spr_cara_goro);
        ds_list_add(cara, spr_cara_goro);
        ds_list_add(cara, spr_cara_goro);
        ds_list_add(cara, spr_cara_goro);
        ds_list_add(cara, spr_cara);
        ds_list_add(cara, spr_cara_goro);
        
        ds_list_add(cara, spr_cara_general);
        ds_list_add(cara, spr_cara_goro);
        ds_list_add(cara, spr_cara_general);
        ds_list_add(cara, spr_cara_goro);
        ds_list_add(cara, spr_cara_general);
        
        ds_list_add(cara, spr_cara);
        ds_list_add(cara, spr_cara_goro);
        ds_list_add(cara, spr_cara_goro);
    break;
}
