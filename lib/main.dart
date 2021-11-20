import 'package:flutter/material.dart';

void main() => runApp(const MyApp()); /*1*/

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  /*2*/
  @override
  Widget build(BuildContext context) {
    /*3*/
    return MaterialApp(
      /*4*/
      title: 'Welcome to Flutter',
      home: Scaffold(
        /*5*/
        appBar: AppBar(
          /*6*/
          title: const Text('Welcome to Flutter'),
        ),
        body: const Center(
          /*7*/
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
