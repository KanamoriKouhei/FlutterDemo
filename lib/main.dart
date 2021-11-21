import 'dart:math';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp()); /*1*/

class MyApp extends StatelessWidget {
  /*2*/
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: RandomWord(),
        ),
      ),
    );
  }
}

class RandomWordState extends State<RandomWord> {
  @override
  Widget build(BuildContext context) {
    final randomWord = WordPair.random();
    return Text(randomWord.asPascalCase);
  }
}

class RandomWord extends StatefulWidget {
  @override
  RandomWordState createState() => RandomWordState();
}
