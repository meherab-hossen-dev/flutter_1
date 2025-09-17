import 'package:flutter/material.dart';

class flutterWidget extends StatelessWidget {
  const flutterWidget({super.key});

  @override
  Widget build(BuildContext context) {

    TextEditingController userName = TextEditingController();
    TextEditingController pass = TextEditingController();
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
              controller: userName,
              decoration: InputDecoration(
            
                hintText: 'Enter username',
                hintStyle: TextStyle(

                  color: Colors.red,
                  fontSize: 15,
                ),
                labelText: 'User name',
                labelStyle: TextStyle(

                  color: Colors.black,
                  fontSize: 20,
                ),

                border: OutlineInputBorder(

                  borderRadius: BorderRadius.circular(50),
                ),
                prefixIcon: Icon(Icons.phone, color: Color.fromRGBO(46, 166, 228, 0.9019607843137255),),
                // suffixIcon: Icon(Icons.check, color: Color.fromRGBO(46, 166, 228, 0.9019607843137255),),

              ),
            ),
          ),

          SizedBox(

            height: 1,
          ),

          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(

              obscureText: true,
              controller: pass,
              decoration: InputDecoration(

                hintText: 'Enter your password',
                hintStyle: TextStyle(

                  color: Colors.red,
                  fontSize: 15,
                ),
                labelText: 'Password',
                labelStyle: TextStyle(

                  color: Colors.black,
                  fontSize: 20,
                ),

                border: OutlineInputBorder(

                  borderRadius: BorderRadius.circular(50),
                ),
                prefixIcon: Icon(Icons.password_sharp, color: Color.fromRGBO(46, 166, 228, 0.9019607843137255),),
                 suffixIcon: Icon(Icons.remove_red_eye, color: Color.fromRGBO(46, 166, 228, 0.9019607843137255),),

              ),
            ),
          ),

          SizedBox(
              width: 100,
              height: 40,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(

                    backgroundColor: Color.fromRGBO(46, 166, 228, 0.9019607843137255),
                  ),
                  onPressed: () {

                    if(userName.text.isEmpty){

                      print('Please enter username');
                    }
                    else{

                      print('User name: ${userName.text}');
                    }

                    if(pass.text.contains('#')){

                      print('Password: ${pass.text}');
                    }
                    else{

                      print('Enter a password using \'#\'');
                    }
                  }, child: Text('Submit', style: TextStyle(

                color: Colors.white,
                fontSize: 16,
              ),))),
        ],
      ),
    );
  }
}
