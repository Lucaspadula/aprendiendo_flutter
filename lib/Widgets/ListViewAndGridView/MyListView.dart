// ignore_for_file: prefer_const_constructors, must_call_super

import 'package:curso_flutter/Common/MyKeys.dart';
import 'package:curso_flutter/Model/Sound.dart';
// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'Items/MyCard.dart';
import 'Items/MyListTile.dart';

// ignore: use_key_in_widget_constructors
class MyListView extends StatefulWidget{
  MyListView():super(key: myListViewKey);
  @override
  State<StatefulWidget> createState() => MyListViewState();

}

class MyListViewState extends State<MyListView>{ 
  List<Sound>mySounds=[];


  @override
  void initState() {
    this.mySounds = sounds; //cargamos las listas de la canciones
  }

  @override
  Widget build(BuildContext context) {
    if (sounds.isEmpty){
      return Center(
        child: Text(
          "La lista de Sonido esta vacia"
        ),
      );

    }
//
    return Container(
      color: Colors.deepOrange,//le agregamos color al contenedor
      child: ListView.builder(
        shrinkWrap:true,// esto es para que pinte la parte de la lista unicamente.
        reverse: true, //lo que hace que ponga el ultimo items al principio
        itemCount: sounds.length,
        itemBuilder: (context, index) {
          Sound sound = mySounds[index];
          return Dismissible(key: ObjectKey(sound),
            direction: DismissDirection.endToStart, // le agregamos la direccion que debe tomar un items para ser eliminando
            //child: MyListTile(sound,remove),
            child: MyListTile(sound, index),
            onDismissed:(direction){
              remove(sound);

            } ,
          );
        }
      )
    );
  }


  update(Sound sound, int index){
    setState(() {
      mySounds[index] = sound;
    });
  }

  add(Sound sound){
    setState(() {
      mySounds.add(sound); //agregamos
    });
  }

  remove(Sound sound){
    setState(() {
      mySounds.remove(sound); //eliminamos el sonido
    });
  }
}