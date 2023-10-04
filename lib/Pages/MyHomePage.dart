
import 'package:curso_flutter/Common/HomeArguments.dart';
import 'package:curso_flutter/Widgets/Actividad/img/MyImageAct1.dart';
import 'package:flutter/material.dart';

import '../Widgets/Actividad/AppBar/MyAppBarAct1.dart';
import '../Widgets/basico/MyAppBar.dart';
import '../Widgets/basico/MyBtn.dart';
import '../Widgets/basico/MyFloationActionButton.dart';
import '../Widgets/basico/MyIcon.dart';
import '../Widgets/basico/MyFloationActionButton.dart';
import '../Widgets/basico/MyImage.dart';
import '../Widgets/basico/MyText.dart';
import '../Widgets/basico/MyRichText.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}):super(key:key);


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    HomeArguments homeArguments = ModalRoute.of(context)!.settings.arguments as HomeArguments; //pasamos datos de una pagina a otra
    return Scaffold(
      //atributos
      floatingActionButton: MyFloatingActionButton(),
      backgroundColor: Colors.blueGrey,
      appBar:MyAppBarAct1(homeArguments.Title), //compartir titulo
      body:  SafeArea(
        child: Center(
            child: Text(homeArguments.Mensaje) //compartir mesnaje  
        ),
      )
    );

       // This trailing comma makes auto-formatting nicer for build methods.

  }
}
