import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//RichText se puede utilizar distintos tipos de texto en un mismo widget
class MyImageAct1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Image(
    image: AssetImage("assets/images/codigo.jpeg"),
    fit: BoxFit.cover,
    );
  }
}