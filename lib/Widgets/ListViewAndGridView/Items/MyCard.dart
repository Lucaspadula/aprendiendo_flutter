import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onDoubleTap: (){print("onDoubleTap");},
      onTapDown: (TapDownDetails downDetails){print("onTapDown ${downDetails.globalPosition}");},
      onTapUp: (TapUpDetails){print("onTapUp");},

      child:Card(
      margin: EdgeInsets.all(20),
      elevation: 25, //sobra para la card
      color: Colors.grey, //color de la card
      shape: RoundedRectangleBorder(//le agregamos el contorno redondendeado
        borderRadius: BorderRadius.circular(50),
        side: BorderSide( //agragamos el grosor y el color al borde
          color: Colors.black,
          width: 2
        ),
      ),
      child: Text("Mi Primer Card",style: TextStyle(fontSize: 30),),
      ));
  }
  
  
  
}