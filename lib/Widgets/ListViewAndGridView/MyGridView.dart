import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Items/MyCard.dart';

// ignore: use_key_in_widget_constructors
class MyGridView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
        //gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( //se le asigna la cantidad
        //  crossAxisCount: 4,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(//depende de la longitud
        maxCrossAxisExtent: 300,
        crossAxisSpacing: 50,
        mainAxisSpacing:50,
      ),
      //physics: NeverScrollableScrollPhysics(),//cancelar el scroll
      /*children: [
        MyCard(),
        MyCard(),
        MyCard(),
        MyCard(),
        MyCard(),
        MyCard(),
        MyCard(),
        MyCard(), Se comenta para agregarlo de manera dinamica con builder
      ],*/
      itemCount: 30,
      itemBuilder: (context, index)=>MyCard(),
    );
  }
  
  
  
}