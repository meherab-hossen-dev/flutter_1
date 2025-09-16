import 'package:flutter/material.dart';

class flutterWidget extends StatelessWidget {
  const flutterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: Text('List_Gesture_&_Navigation', style: TextStyle(

          color: Colors.white,
        ),),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(46, 166, 228, 0.9019607843137255),
      ),

      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
            
              decoration: InputDecoration(
            
                hintText: 'Enter your number',
                hintStyle: TextStyle(

                  color: Colors.red,
                  fontSize: 15,
                ),
                labelText: 'Phone number',
                labelStyle: TextStyle(

                  color: Colors.black,
                  fontSize: 20,
                ),
                prefixIcon: Icon(Icons.phone, color: Color.fromRGBO(46, 166, 228, 0.9019607843137255),),
                // suffixIcon: Icon(Icons.check, color: Color.fromRGBO(46, 166, 228, 0.9019607843137255),),

              ),
            ),
          )
        ],
      ),
    );
  }
}
