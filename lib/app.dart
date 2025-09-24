import 'package:flutter/material.dart';
import 'home.dart';
// import 'nav_and_ui.dart';
//import 'widget.dart';
// import 'layouts.dart';
//import 'listview.dart';
// import 'gridView.dart';
// import 'stack.dart';
class MyApp extends StatelessWidget {

  MyApp({super.key});

  @override
  Widget build(BuildContext context){

    return MaterialApp(

      title: 'To-do list app',
      home: Home(),
    );
  }
}