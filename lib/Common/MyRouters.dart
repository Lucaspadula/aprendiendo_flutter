
import 'package:curso_flutter/Pages/LoginPage.dart';
import 'package:curso_flutter/Pages/MyHomePage.dart';
import 'package:curso_flutter/Pages/NowPlayinPage.dart';
import 'package:curso_flutter/Pages/PlayListPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../Widgets/ListViewAndGridView/Actividad/CoverContainer.dart';

const String ROUTE_HOME = "/home";
const String ROUTE_LOGIN = "/login";
const String ROUTE_PLAY_LIST = "/play_list";
const String ROUTE_NOW_PLAYING = "/now_playing";


class MyRouters {

  static Route<dynamic>generateRoute(RouteSettings settings){

   switch(settings.name){

     case "/home":
       return PageTransition(child:MyHomePage(), type: PageTransitionType.leftToRight, settings: settings, alignment: Alignment.centerRight);
     case "/login":
       return MaterialPageRoute(builder: (_)=>LoginPage());
     case "/play_list":
       return MaterialPageRoute(builder: (_)=>PlayListPage());
     case "/now_playing":
       return MaterialPageRoute(builder: (_)=>NowPlayingPage());
     default:
       return MaterialPageRoute(builder: (_)=>LoginPage());


   }


  }
}