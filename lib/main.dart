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
            child: Column(
              children: <Widget>[
              Text('Bolo de Cenoura'),
              Image.network('https://th.bing.com/th/id/Rfee9dd5e44f3b576103b95a4ae3421c7?rik=ZuM5ZoYkcq3NeA&riu=http%3a%2f%2fimg.itdg.com.br%2fimages%2frecipes%2f000%2f188%2f775%2f279323%2f279323_original.jpg&ehk=iOg74%2bcedsS%2bqD%2f7wv25PsTZ6Ax3a0sP8opRLt7hURk%3d&risl=&pid=ImgRaw')
          ],
          ),
      )),
      appBar: AppBar(title: Text('Cozinhando em Casa')),
      ),
    );
  }
}


