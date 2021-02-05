import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

dynamic a;
Object b;

//void main() {
//  runApp(MyApp());
//}

void main() => runApp(new MyApp());



class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
//      注释掉该段代码，使用自己写的类
//      final wordPair = new WordPair.random();
      return new MaterialApp(
        title: 'Welcome to Flutter',
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text('Welcome to flutter'),
          ),
          body: new Center(
//              第一步
//              child: new Text('hello wolrd')
//            第二步
//              child: new Text(wordPair.asPascalCase)

//              第三步
              child: new RandomWords()
          )
        )
      );
    }
  }
  
  
  class RandowWordsState extends StatefulWidget {
    @override
    _RandowWordsStateState createState() => _RandowWordsStateState();
  }
  
  class _RandowWordsStateState extends State<RandowWordsState> {
    @override
    Widget build(BuildContext context) {
      return Container();
    }
  }
  
  // 写一个随机生成文字得类
//一个 StatefulWidget类。
//一个 State类。 StatefulWidget类本身是不变的，但是 State类在widget生命周期中始终存在.
  class RandomWords extends StatefulWidget {
    @override
    _RandomWordsState createState() => _RandomWordsState();
  }
  
  class _RandomWordsState extends State<RandomWords> {
    @override
    Widget build(BuildContext context) {
      final wordPair = new WordPair.random();
      return new Text(wordPair.asPascalCase);
    }
  }
  
  
  class _State extends State<RandomWords> {
 
    @override
    Widget build(BuildContext context) {
      return Container();
    }
  }
  

