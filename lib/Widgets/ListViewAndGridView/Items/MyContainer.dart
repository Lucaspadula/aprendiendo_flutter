import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
        onTap: (){print("OnTap");},
        onLongPress: (){print("onLongPress");},

        child: Container(
        //color: Colors.grey, el color se usar on el decorador o en el container
        width: 200,
        height: 200,
        alignment: Alignment.center,
        margin: EdgeInsets.all(30),
        child: Text("Hola soy un contenedor"),
        decoration: BoxDecoration(
          color: Colors.grey,
          //borderRadius: BorderRadius.only(bottomLeft:Radius.circular(20) ),
          border: Border.all(
            color: Colors.black,
            width: 2,
          ),
          shape: BoxShape.circle, //le damos forma al contenedor
          boxShadow: [ //le damos la sombra
            BoxShadow(
              color: Colors.black,
              offset: Offset(10,8)
            )
          ],
          gradient: LinearGradient( //Degradado
              colors: [
                Colors.deepOrange,
                Colors.black26
              ],
            begin: Alignment.topLeft,
            end: Alignment.topRight
          ),
          image: DecorationImage(
            image: AssetImage("assets/images/codigo.jpeg"),
          )



        )
      ),
    );
  }
  
  
  
}