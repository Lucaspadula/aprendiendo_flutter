import 'package:flutter/material.dart';

import '../../../Model/Sound.dart';

class SounListTileV2 extends StatelessWidget{
  Sound sound;
  int index;

  SounListTileV2(this.sound, this.index);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Artista: " + sound.author),
          Text("Edad: " +sound.edad),
        ],
      ),
        trailing: Icon(Icons.more_vert),
        leading: Icon(Icons.play_circle),
    );
  }


}