import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//RichText se puede utilizar distintos tipos de texto en un mismo widget
class MyIcon extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Icon(
      Icons.pets_sharp,
      color: Colors.black,
      size: 60
    );
  }
}