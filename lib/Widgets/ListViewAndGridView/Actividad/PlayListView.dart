import 'package:curso_flutter/Common/MyKeys.dart';
import 'package:curso_flutter/Widgets/ListViewAndGridView/Actividad/CoverContainer.dart';
import 'package:curso_flutter/Widgets/ListViewAndGridView/Actividad/SoundListTileV2.dart';
import 'package:curso_flutter/Widgets/ListViewAndGridView/MyListView.dart';
import 'package:flutter/cupertino.dart';

import '../../../Model/Sound.dart';
import 'CoverContainerV2.dart';
import 'SoundListTile.dart';

class PlayListView extends StatefulWidget{
   //PlayListView():super(Key: myListViewKey);
  @override
  State<StatefulWidget> createState() => PlayListViewState();
  
}

class PlayListViewState extends State<PlayListView>{

  List<Sound> mySounds = [];


  @override
  void initState() {
    this.mySounds = sounds; //cargamos las listas de la canciones
  }

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 270,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: sounds.length,
                itemBuilder: (context, index){
                  return CoverContainer(this.mySounds[index].cover);
                })),
          ListView.builder(
              shrinkWrap:true,
              itemCount: sounds.length,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index){
                Sound sound = mySounds[index];
                return SounListTile(sound, index);
              }),
          SizedBox(
              height: 300,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: sounds.length,
                  itemBuilder: (context, index){
                    return CoverContainerV2(this.mySounds[index].cover);

                  })),
          ListView.builder(
              shrinkWrap:true,
              itemCount: sounds.length,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index){
                Sound sound = mySounds[index];
                return SounListTileV2(sound, index);
              }),
        ],
      )
    );
  }


}