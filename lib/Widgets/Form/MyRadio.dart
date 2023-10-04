import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyRadio extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyRadioState();
}

class MyRadioState extends State<MyRadio> {
  String currentValue = "";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        RadioListTile( //se le puede agregar titulo en donde radio no podiamos
            title: Text("Radio 1"),
            value: "Radio 1",
            //Este parámetro representa el valor asociado al botón de opción
            groupValue: currentValue,
            //Este parámetro indica el valor actualmente seleccionado dentro del grupo de botones de opción
            onChanged: (value) => onChanged(
                value) // Este parámetro es una función que se llama cuando el usuario selecciona el Radio
            ),
        RadioListTile(
            title: Text("Radio 2"),
            value: "Radio 2",
            groupValue: currentValue,
            onChanged: (value) => onChanged(value)
        ),
        Text("El currentValue: " + currentValue)
      ],
    );
  }

  onChanged(value) {
    setState(() {
      this.currentValue = value.toString();
    });
  }
}
