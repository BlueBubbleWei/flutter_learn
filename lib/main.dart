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
//          第四步
      home: new RandomWords(),
//        home: new Scaffold(
//            appBar: new AppBar(
//              title: new Text('Welcome to flutter'),
//            ),
//            body: new Center(
////              第一步
////              child: new Text('hello wolrd')
////            第二步
////              child: new Text(wordPair.asPascalCase)
//
////              第三步
//                child: new RandomWords()))
    );
  }
/**/
}

// 写一个随机生成文字得类
//一个 StatefulWidget类。
//一个 State类。 StatefulWidget类本身是不变的，但是 State类在widget生命周期中始终存在.
class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  //    向RandomWordsState类中添加一个_suggestions列表以保存建议的单词对。 该变量以下划线（_）开头，
//    在Dart语言中使用下划线前缀标识符，会强制其变成私有的。
//    另外，添加一个biggerFont变量来增大字体大小
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 12.0);

  Widget _buildSuggestions() {
    return new ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        print('MMMMMMMMMMMMMMM' + i.toString());
        if (i.isOdd) return new Divider();
        final index = i ~/ 2;
        print(index);
        if (index >= _suggestions.length) {
//          随机生成长度为10的数组
          _suggestions.addAll(generateWordPairs().take(10));
        }
        // 将这个字符串显示到一行
        return _buildRow(_suggestions[index]);
      },
    );
  }

  Widget _buildRow(WordPair pair) {
    print(pair.asPascalCase);
    return new ListTile(
      title: new Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
//    final wordPair = new WordPair.random();
//    return new Text(wordPair.asPascalCase);
  print('YYYYYYY');
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Dahei'),
      ),
      body: _buildSuggestions(),
    );
  }
}


