import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoverContainerV2 extends StatelessWidget{
  String image;
  CoverContainerV2(this.image);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: ()=>print("Ontap"),
      child: Container(
        width: 100,
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,//Se utiliza para cubrir la imagen
            image: AssetImage(
              this.image
            )),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(4,5)
          )
        ]
        ),
      ),
    );
  }

}