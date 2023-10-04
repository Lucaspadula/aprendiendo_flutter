import 'package:curso_flutter/Common/MyRouters.dart';
import 'package:curso_flutter/Pages/PlayListPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//RichText se puede utilizar distintos tipos de texto en un mismo widget
class MyFloatingActionButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
        onPressed: (){
          //Navigator.push(context, MaterialPageRoute(builder: (context)=>PlayListPage()));
          Navigator.popAndPushNamed(context, ROUTE_PLAY_LIST);
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