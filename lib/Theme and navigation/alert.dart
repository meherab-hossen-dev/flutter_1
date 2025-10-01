import 'package:flutter/material.dart';

class Alert extends StatelessWidget {
  const Alert({super.key});

  @override
  Widget build(BuildContext context) {

    void showAlertDialog(){

      showDialog(context: context,
          barrierDismissible: false,
          builder: (context)=> AlertDialog(

        title: Text('WARNING...!', style: TextStyle(

          color: Colors.red,
          fontWeight: FontWeight.bold,
        ),),
        
        content: Text('Do you want to press Alert Dialog Button?'),
        actions: [
          
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text('Cancel')),
          ElevatedButton(onPressed: (){}, child: Text('Submit'))
        ],
      ));
    }

    void showAlertDialogWithIcon(){

      showDialog(context: context, builder: (context)=> AlertDialog(

        title: Text('Installation Block!',style: TextStyle(
          fontSize: 20,
        ),),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Icon(Icons.warning, color: Colors.red, size: 40, ),
                SizedBox(width: 5),
                Text('Warning'),
              ],
            ),
            SizedBox(height: 10),

            Text('Unauthorized access or incompatible system detected. Ensure proper permissions and system requirements are met before proceeding. Continuing may cause errors, data loss, or system instability. Proceed with caution!', style: TextStyle(

              color: Colors.black,
            ),)
          ],
        ),

        actions: [

          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text('Ok'))
        ],
      ));
    }

    void showSimpleDialog(){

      showDialog(context: context, builder: (context)=> SimpleDialog(

        title: Text('Simple Dialog'),
        children: [
          SimpleDialogOption(
            child: Text('Option 1'),
          ),
          SimpleDialogOption(
            child: Text('Option 2'),
          )
        ],
      ));
    }

    void showBottomSheetAlert(){

      showModalBottomSheet(context: context, builder: (context)=> Container(

        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            Text('Choose correct option',style: TextStyle(

              fontSize: 18,
              color: Colors.black,
            ),),
            ListTile(
              title: Text('Option 1'),
              onTap: (){},
            ),
            ListTile(
              title: Text('Option 2'),
              onLongPress: (){},
            ),
            ListTile(
              title: Text('Option 3')
            ),
            ListTile(
              title: Text('Option 4')
            ),
            SizedBox(
                width: 200,
                child: ElevatedButton(onPressed: (){

                  Navigator.pop(context);
                }, child: Text('Save')))
          ],
        ),
      ));
    }

    return Scaffold(
      
      appBar: AppBar(
        centerTitle: true,
        title: Text('Alert', style: TextStyle(

          fontWeight: FontWeight.bold,
        ),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        
            ElevatedButton(onPressed: (){
        
              showAlertDialog();
            }, child: Text('Alert Button')),
            
            ElevatedButton(onPressed: (){

              showAlertDialogWithIcon();
            }, child: Text('Install')),

            ElevatedButton(onPressed: (){

              showSimpleDialog();
            }, child: Text('Simple Button')),

            ElevatedButton(onPressed: (){

              showBottomSheetAlert();
            }, child: Text('Bottom Sheet'))
          ],
        ),
      ),
    );
  }
}
