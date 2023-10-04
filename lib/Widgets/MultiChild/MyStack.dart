import 'package:flutter/material.dart';

class MyStack extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        Image.asset("assets/images/codigo.jpeg"),
        Positioned(
            right: 1,//posicion del icono
            child: Icon(Icons.close,color: Colors.white,)
        )

      ],
    );
  }




}