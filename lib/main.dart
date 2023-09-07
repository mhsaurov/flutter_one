import 'package:flutter/material.dart';

void main(){
  runApp(
    TestApp()
  );
}

class TestApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: HomeScreen(),
     title: 'hello world',
   );
  }
}

class HomeScreen extends StatelessWidget{
  // function for toastbar/snackbar message
  BarMessage(message , context){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // backgroundColor: Colors.black12,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        title: Text('profile'),
        titleSpacing : 100,
        elevation: 30,
      ),




      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Icon(
                  Icons.account_circle ,
                  color: Colors.green,
                  size: 50,
                ),
                Text('John Doe' , style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,

                ) ,)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Flutter Batch 4' , style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink
                ),),


              ],
            ),

          ],

      ),
    );
  }

}
