import 'package:curso_flutter/Common/MyKeys.dart';
import 'package:curso_flutter/Model/Sound.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//typedef VoidCallbackParam(Sound sound);

class MyListTile extends StatelessWidget{
  Sound sound;
  int index;
  //VoidCallbackParam voidCallBackParam;
  //MyListTile(this.sound, this.voidCallBackParam);
  MyListTile(this.sound, this.index);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      title: Text(sound.title, style: TextStyle(fontSize: 35),),
      subtitle:  Text(sound.author),
      trailing: InkWell(
        //onTap: ()=>voidCallBackParam(sound), v2 para borrar un items
        onTap: ()=> myListViewKey.currentState?.remove(sound),//?no tiene ser nulo por eso se agrega el signo ?
        child:Icon(Icons. close), //icono a la iZQUIERA
      ),
      leading: Icon(Icons.chrome_reader_mode),//Icono a la derecha
      onTap: ()=> myListViewKey.currentState?.update(sound..title="Update - Hola Mundo", index),
      onLongPress: (){print("Onclick onLongPress ");}, //click largo
    );
  }
  
  
  
}