import 'package:flutter/material.dart';
//import 'package:flutter_1/Theme%20and%20navigation/alert.dart';
//import 'package:flutter_1/Theme%20and%20navigation/assignment.dart';
import 'package:flutter_1/Theme%20and%20navigation/drawerAndTapBar.dart';
//import 'home.dart';
// import 'nav_and_ui.dart';
//import 'widget.dart';
// import 'layouts.dart';
//import 'listview.dart';
// import 'gridView.dart';
// import 'stack.dart';

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context){

    return MaterialApp(

      title: 'To-do list app',
      home: Navigation()
    );
  }
}