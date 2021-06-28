import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        body: 
        SizedBox(
          height: 300,
          child: Card(
            margin: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[ 
                      Image.asset('assets/images/bolo-cenoura.jpeg', fit: BoxFit.fill, height: 280,),
                      Positioned(
                        bottom: 10,
                        left: 10,
                        child: Text('Bolo de Cenoura', style: TextStyle(fontSize: 25, color: Colors.white),),
                      )
                  ],
                )
              ],
          ),
      )),
      appBar: AppBar(title: Text('Cozinhando em Casa')),
      ),
    );
  }
}


