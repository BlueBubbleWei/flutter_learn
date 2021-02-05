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
        final wordPair = new WordPair.random();
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
                child: new Text(wordPair.asPascalCase)

            )
          )
        );
      }
    }

