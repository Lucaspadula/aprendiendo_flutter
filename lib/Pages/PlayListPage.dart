import 'package:curso_flutter/Model/Sound.dart';
import 'package:curso_flutter/Pages/NowPlayinPage.dart';
import 'package:curso_flutter/Widgets/ListViewAndGridView/MyListView.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:curso_flutter/Common/MyKeys.dart';

class PlayListPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>PlayListPageState();
  
}

class PlayListPageState  extends State<PlayListPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: ()=> myListViewKey.currentState?.add(Sound(title: "Corazon Partido", author: "Miranda")),
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child:NowPlayingPage(),
        //MyListView(),
      ),
    );
  }
}