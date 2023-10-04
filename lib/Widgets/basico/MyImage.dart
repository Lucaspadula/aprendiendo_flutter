import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//RichText se puede utilizar distintos tipos de texto en un mismo widget
class MyImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Image(
    image: NetworkImage("https://avatars.githubusercontent.com/u/10576462?s=280&v=4"),
    //AssetImage("assets/images/codigo.jpeg"),
    width: 200,
    height: 200,
    fit: BoxFit.fill,
    );
  }
}