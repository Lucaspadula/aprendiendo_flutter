import 'package:flutter/material.dart';

class MyRow extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child:  Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Column(
          children: [
            Text("HolaSADASD 1"),
            Text("HolaASDASDA 2"),
            Text("HolaASDASDA 3"),
            Text("HolaASDASDAS 4"),
          ],
        ),
        Text("HolaHolaASDASDAS 1"),
        Text("HolaHolaASDASDAS 2"),
        Text("HolaHolaASDASDAS 3"),
        Text("HolaHolaASDASDAS 4"),

      ],

    ));
  }




}