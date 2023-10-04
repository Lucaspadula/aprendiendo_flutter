import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//RichText se puede utilizar distintos tipos de texto en un mismo widget
class MyFloatingActionButton_act1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      onPressed: (){
        print("FloatingActionButton");
      },
      child: const Icon(
        Icons.add,
        size: 40,
      ),
      backgroundColor: Colors.white,
      tooltip: "Agregar Usuario",
    );

  }
}