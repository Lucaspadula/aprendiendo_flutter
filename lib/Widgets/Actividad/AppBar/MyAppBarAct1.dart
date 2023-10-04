import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//RichText se puede utilizar distintos tipos de texto en un mismo widget
class MyAppBarAct1 extends StatelessWidget implements PreferredSizeWidget{

  String title;
  MyAppBarAct1(this.title, {super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppBar(
      title: Text(title),
      backgroundColor: Colors.teal,
      elevation: 30,
      shadowColor: Colors.black,
      centerTitle: true,
      toolbarOpacity: 1,
      leading:  Icon(
        Icons.star_border, color: Colors.white,
      ),
      actions: [
        Icon(Icons.mode,color: Colors.white),
        Icon(Icons.more_vert, color: Colors.white)
      ],

    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}