import'package:flutter/material.dart';

class Nav extends StatelessWidget {
  const Nav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

        title: Text('Navigation and UI', style: TextStyle(
          color: Colors.white,
        )),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(20, 13, 73, 1.0),
      ),
      body: Column(

        children: [

          ElevatedButton(onPressed: () {}, child: Text('Submit'))
        ],
      ),
    );
  }
}
