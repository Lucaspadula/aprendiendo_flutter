
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class MyDatePicker extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyDatePickerState();
}

class MyDatePickerState extends State<MyDatePicker> {
  
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(
      onPressed: ()=>selectDate(), 
      child: Text(selectedDate.toString())
      ); 
  }


  selectDate() async{
    // ignore: unused_local_variable
    DateTime? dateTime = await showDatePicker(
    context: context, 
    initialDate: selectedDate, 
    firstDate: DateTime(2021), 
    lastDate: DateTime(2024)
  );
  if (dateTime != null && selectedDate != dateTime){
    setState(() {
      selectedDate = dateTime;
    });
  }

}
}


