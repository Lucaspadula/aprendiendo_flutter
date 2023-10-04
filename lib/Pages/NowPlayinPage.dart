import 'package:curso_flutter/Pages/MyHomePage.dart';
import 'package:curso_flutter/Widgets/MultiChild/MyRow.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../Widgets/ListViewAndGridView/Actividad/PlayListView.dart';
import '../Widgets/ListViewAndGridView/Items/MyCard.dart';
import '../Widgets/ListViewAndGridView/Items/MyContainer.dart';
import '../Widgets/ListViewAndGridView/Items/MyListTile.dart';
import '../Widgets/ListViewAndGridView/MyGridView.dart';
import '../Widgets/ListViewAndGridView/MyListView.dart';
import '../Widgets/MultiChild/MyColumn.dart';
import '../Widgets/MultiChild/MyStack.dart';
import 'PlayListPage.dart';

class NowPlayingPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>NowPlayingPageState();

}

class NowPlayingPageState  extends State<NowPlayingPage>{



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          title: Text("Musica"),
      ),
      body: SafeArea(
        child: PlayListView())
        /*ElevatedButton(
          child: Text("My HomePage"),
          onPressed: ()=>{
            //Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHomePage())) //no direccionamos a la proxima pantalla
            Navigator.pop(context) //cerramos esta pantalla y nos vemos para atras*/

          //},
        //),
      //),
    );
  }
}