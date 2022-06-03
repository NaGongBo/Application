import 'package:flutter/material.dart';
import 'package:musical_for_dummies/pages/home.dart';
import 'package:musical_for_dummies/pages/info_plays.dart';
import 'package:musical_for_dummies/pages/loading.dart';

void main(){
  runApp(MaterialApp(
    initialRoute: '/home',
    routes:{
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/info_plays': (context) => Info_Plays(),
    }
  ));
}