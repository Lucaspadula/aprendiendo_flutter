import 'package:flutter/material.dart';

import '../../../Model/Sound.dart';

class SounListTile extends StatelessWidget{
  Sound sound;
  int index;

  SounListTile(this.sound, this.index);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      title: Text(sound.title),
      subtitle: Text(sound.author),
      trailing: Icon(Icons.play_circle),
      leading: Icon(Icons.more_vert),
    );
  }


}