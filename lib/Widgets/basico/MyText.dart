import 'package:flutter/cupertino.dart';

class MyText extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  const Text(
      "Hola Mundo, estes es mi primer programa",
      style: TextStyle(
        color: CupertinoColors.lightBackgroundGray,
        fontSize: 30,
        fontFamily: "CourierPrime",
        fontWeight: FontWeight.bold,
        letterSpacing: 5,
        backgroundColor: CupertinoColors.systemGrey2,
      ),

      textAlign: TextAlign.center,
      softWrap: true,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    ); //text
  }
}