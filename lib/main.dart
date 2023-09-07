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
     title: 'NEXTSOft3',
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
        backgroundColor: Colors.green,
        title: Text('StreamStek'),
        titleSpacing : 100,
        toolbarHeight: 100,
        elevation: 70,
        actions: [
          IconButton(onPressed: (){BarMessage('This is under constraction', context);},
              icon: Icon(Icons.settings)),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
                child:  UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.black),
                  accountName: Text('saurov'),
                  accountEmail: Text('developer@gmail.com'),
                  currentAccountPicture: new CircleAvatar(
                    radius: 50.0,
                    backgroundColor: const Color(0xFF778899),
                    backgroundImage: NetworkImage('https://streamstek.com/'
                        'js-bord/uploads/2023/04/WhatsApp_Image_'
                        '2023-04-08_at_23.24.50-removebg-preview-2-1-200x145.png'),
                  )

                )
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(leading: Icon(Icons.account_box_outlined), title: Text('About'),),
            ListTile(leading: Icon(Icons.phone), title: Text('contact us'),),
          ],
        ),
      ),


      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Text('Hello flutter world',
                  style:TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30

                  )
                  ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('My ' , style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink
                ),),
                Text('phone ' , style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,

                ),),
                Text('Name is ' , style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),),
                Text('Iphone 11' , style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),),
              ],
            ),

          ],

      ),
    );
  }

}
