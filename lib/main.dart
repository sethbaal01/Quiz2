//90055509
//08/29/2000

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});  //constructor for MyApp

  //this is the 'building' of MyApp
  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Practice Widget'; //gives a title to the page
    return new MaterialApp(
      title: appTitle,
      home: new Scaffold(
          appBar: new AppBar(title: const Text(appTitle)), //applies the title, appbar is the top of the page
          body: const Center(child: Text('Hello World!'))
      ),
    );
  }
}
