import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//RichText se puede utilizar distintos tipos de texto en un mismo widget
class MyAppBar_act1 extends StatelessWidget implements PreferredSizeWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppBar(
      title: Text("Inicio"),
      backgroundColor: Colors.teal,
      elevation: 30,
      shadowColor: Colors.black,
      centerTitle: true,
      toolbarOpacity: 1,
      leading:  Icon(
        Icons.star_border_purple500_rounded, color: Colors.white,
      ),
      actions: [
        Icon(Icons.edit,color: Colors.white),
        Icon(Icons.more_vert, color: Colors.white)
      ],

    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}