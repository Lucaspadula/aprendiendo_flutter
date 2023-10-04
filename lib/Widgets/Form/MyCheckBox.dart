import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCheckBox extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyCheckBoxState();
}

class MyCheckBoxState extends State<MyCheckBox> {
  String currenValue = ""; //inicializamos
  List<String> course = [
    "Flutter",
    "Android",
    "PHP",
    "GO",
    "JAVA"
  ]; //creamos la lista
  List<bool> isChecked = []; //definimos una lista de Buleanos

  @override
  void initState() {
    isChecked = List<bool>.filled(course.length, false);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Text(isChecked.toString()),
        ListView.builder(
          shrinkWrap: true, //debe ajustar su tamaño al tamaño de su contenido o si debe ocupar todo el espacio
          itemCount: course.length,
          itemBuilder: (context, index) {
            return CheckboxListTile(
                title: Text(course[index]),
                value: isChecked[index],
                onChanged: (value) {
                  setState(() {
                    isChecked[index] =
                        value as bool; //transformamos value a bool
                  });
                });
          },
        )
      ],
    );
  }
}
