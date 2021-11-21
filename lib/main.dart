import 'dart:math';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp()); /*1*/

//アプリ基本クラス
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Word Generator',
      home: RandomWord(),
    );
  }
}

//ステートフルウィジェットに呼び出される、ステート変化処理
class RandomWordState extends State<RandomWord> {
  // アンダースコアでプライベート
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18);
  //_buildSuggestionsウィジェット
  Widget _buildSuggestions() {
    return ListView.builder(
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, i) {
          //無名関数
          //奇数の時、仕切りを表示
          if (i.isOdd) return Divider();
          final index = i ~/ 2;
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_suggestions[index]);
        });
  }

  // 表示整形
  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }

  //ビルド UI構築処理 何度も呼ばれる
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('word generator'),
      ),  
      body: _buildSuggestions(),
    );
  }
}

//ステートフルウィジェット
class RandomWord extends StatefulWidget {
  @override
  RandomWordState createState() => RandomWordState();
}
