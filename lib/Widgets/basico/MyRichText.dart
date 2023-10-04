import 'package:flutter/cupertino.dart';

//RichText se puede utilizar distintos tipos de texto en un mismo widget
class MyRichText extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichText(text:
    TextSpan(
      text: "¿Tieness una cuenta ?",
      style: TextStyle(
        color: CupertinoColors.destructiveRed,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.underline,
        fontSize: 20
      ),
      children: [
        TextSpan(
          text: "Iniciar Sesion",
          style: TextStyle(
            color: CupertinoColors.secondarySystemBackground
          )
        )
      ]
    ));
  }
}