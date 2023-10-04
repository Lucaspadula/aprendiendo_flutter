import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

//RichText se puede utilizar distintos tipos de texto en un mismo widget
class MyBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return myOutlineButton();
  }

  myElevateButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.black,
        onPrimary: Colors.white,
        shadowColor: Colors.amber,
        elevation: 20,

      ),
      onLongPress: (){
        print("Se guarda con elevate button");
      },
      onPressed: (){
        print("Se guarda con elevate button");
      },
      child: Text("Guardar"),
    ); //btn
  }

  myTextButton() {
    return TextButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.black,
        onPrimary: Colors.white,
        shadowColor: Colors.amber,
        elevation: 20,

      ),
      onLongPress: (){
        print("Se guarda con elevate button");
      },
      onPressed: (){
        print("Se guarda con elevate button");
      },
      child: Text("Guardar"),
    ); //btn
  }

  myOutlineButton() {
    return OutlinedButton(
      
      style: OutlinedButton.styleFrom(
        side: BorderSide(
          color: Colors.white,
          width: 2,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30))
        ),
        shadowColor: Colors.amber,
        elevation: 20,

      ),
      onLongPress: (){
        print("Se guarda con elevate button");
      },
      onPressed: (){
        print("Se guarda con elevate button");
      },
      child: Text("Guardar"),
    ); //btn
  }




}