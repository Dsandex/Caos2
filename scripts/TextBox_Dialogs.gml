/// TextBox_Dialogs(room, visit, character, index);
var room_ = argument[0];

/*
    0: Daniel.
    1: Carlos.
    2: Julián
    3: Mamá.
*/


// Llenar listas.
switch(room_){
    case game_intro:    
        // Fill texto.
        can_skip = false;

       // Dialogo entre niños.
        if(idioma == "es"){
        
            // Charla en casa.
            ds_list_add(texto, "Daniel: ¡Carlos! ¡Carlos! ¿Estás ahí?"); ds_list_add(caras, 0); // 0 
            ds_list_add(texto, "Carlos: ¡Hola Daniel! ¡Te he estado esperando#todo el día!"); ds_list_add(caras, 1); // 1 
            ds_list_add(texto, "Daniel: Si, perdón, mi mamá casi no me deja#salir..."); ds_list_add(caras, 0); // 2
            ds_list_add(texto, "Daniel: ¡Llama a Julián, vamos a ir a las#maquinitas!"); ds_list_add(caras, 0); // 3
            ds_list_add(texto, "Carlos: ¡Listo! ¡Ya lo llamo!"); ds_list_add(caras, 1); // 4
            ds_list_add(texto, "Julián: Hola Daniel, casi que no llegas...,#estábamos listos hace rato."); ds_list_add(caras, 2); // 5
            ds_list_add(texto, "Julián: ¡En fin, no importa...vamos!"); ds_list_add(caras, 2); // 6
            
            
            ds_list_add(texto, "Mamá: ¿¡A dónde creen que van jovencitos!?"); ds_list_add(caras, 3); // 7
            ds_list_add(texto, "Julián: Ehh..., ¡Hola mamá!"); ds_list_add(caras, 2);
            ds_list_add(texto, "Julián: Sólo vamos a ir a jugar maquinitas en el#centro comercial, no nos demoramos..."); ds_list_add(caras, 2);
            ds_list_add(texto, "Mamá: ¡No deberían estar callejeando..., conocen#la situación!"); ds_list_add(caras, 3);
            ds_list_add(texto, "Carlos: ¡No pasará nada mamá, volveremos#pronto!"); ds_list_add(caras, 1);
            ds_list_add(texto, "Mamá: ¡Cuídense por favor!"); ds_list_add(caras, 3); // 12
            
            // Charla mientras caminan a la ciudad.
            ds_list_add(texto, "Daniel: ¡Hey muchachos, me enteré que hay un#nuevo videojuego en el local al que vamos!"); ds_list_add(caras, 0); // 13
            ds_list_add(texto, "Julián: ¡Sí, todo el mundo sólo habla de él,#dicen que es una locura!"); ds_list_add(caras, 2); // 14
            ds_list_add(texto, "Daniel: ¡Dicen que se trata de tres niños#que deben escapar de dos monstruos!"); ds_list_add(caras, 0);// 15
            ds_list_add(texto, "Julián: ¡Yo también he escuchado lo mismo!,#pero nadie sabe como termina..."); ds_list_add(caras, 2);// 16
            ds_list_add(texto, "Daniel: ¡Quiero ser el primero en jugarlo!"); ds_list_add(caras, 0); // 17
            ds_list_add(texto, "Carlos: ¿Y cómo se llama?"); ds_list_add(caras, 1); // 18
          
            
            // Interrumpen personas corriendo
            ds_list_add(texto, "Julián: Esperen..., ¿Por qué corren estas personas?"); ds_list_add(caras, 2); // 19
            

            // Explosiones.
            ds_list_add(texto, "Daniel: ¿¡Qué esta pasando!?"); ds_list_add(caras, 0); // 20
            
            // Soldados y tanques.
            ds_list_add(texto, "Carlos: ¡No lo sé, pero tenemos que irnos ya!"); ds_list_add(caras, 1); // 21
            
            
            ds_list_add(texto, "Daniel: ¡Esperen..., creo que esos tres#niños..., ¡somos nosotros!"); ds_list_add(caras, 0); // 22
            ds_list_add(texto, "Carlos: ¿¡De qué estás hablando!?"); ds_list_add(caras, 1); // 23
            
            // Aparece caos en pantalla y pablo saltando.
            ds_list_add(texto, "Julián: ¡Corran! ¡Corran! ¡Es el Jefe!"); ds_list_add(caras, 2); // 24
            
            
           // ds_list_add(texto, "El Jefe: ROOOOOOOOAAAAAAR!"); ds_list_add(caras, 4); // 25
            
        }else if(idioma == "en"){
        
            
        }
               
    break;
}
