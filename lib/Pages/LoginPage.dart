import 'package:curso_flutter/Common/MyRouters.dart';
import 'package:curso_flutter/Pages/MyHomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../Common/HomeArguments.dart';
import '../Widgets/Form/MyCheckBox.dart';
import '../Widgets/Form/MyDatePicker.dart';
import '../Widgets/Form/MyRadio.dart';

class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>LoginPageState();

}

class LoginPageState  extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child:MyDatePicker(),//MyRadio(),
        /*ElevatedButton(
          child: Text("My HomePage"),
          onPressed: ()=>{
            //Navigator.push(context, MaterialPageRoute(//Direccion en como se abren las ventandas codigo extendido
            //builder: (context)=>MyHomePage()))//con esto redireccionamos
            Navigator.pushNamed(context, ROUTE_HOME,arguments: HomeArguments("Inicio ", "Hola mundo"))
          },
        ),*/
      ),
    );
  }
}