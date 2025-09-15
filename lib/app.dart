import 'package:flutter/material.dart';
import 'home.dart';

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