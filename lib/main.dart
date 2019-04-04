import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Startup Name Generator',
      theme: new ThemeData(
        primaryColor: Colors.white,
      ),
      home: new RandomWords(),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];

  final _saved = new Set<WordPair>();

  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Startup Name Generator'),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.list), onPressed: _pushSaved)
        ],
      ),
      body: _buildSuggestions(),
    );
  }

  Widget _buildSuggestions() {
    return new ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return new Divider();

        final index = i ~/ 2;
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      },
    );
  }

  Widget _buildRow(WordPair pair) {
    final alreadySaved = _saved.contains(pair);
    return new ListTile(
      title: new Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: new Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),
      onTap: () {
        setState(
              () {
            if (alreadySaved) {
              _saved.remove(pair);
            } else {
              _saved.add(pair);
            }
          },
        );
      },
    );
  }

  void _pushSaved() {
    _test();

    Navigator.of(context).push(
      new MaterialPageRoute(
        builder: (context) {
          final tiles = _saved.map(
                (pair) {
              return new ListTile(
                title: new Text(
                  pair.asPascalCase,
                  style: _biggerFont,
                ),
              );
            },
          );
          final divided = ListTile.divideTiles(
            context: context,
            tiles: tiles,
          ).toList();

          return new Scaffold(
            appBar: new AppBar(
              title: new Text('Saved Suggestions'),
            ),
            body: new ListView(children: divided),
          );
        },
      ),
    );
  }
}

void _test() {
  _String();
  _List();
  _Map();
}

void _Map() {
//  Map的声明
  var hawaiianBeaches = {
    'oahu': ['waikiki', 'kailua', 'waimanalo'],
    'big island': ['wailea bay', 'pololu beach'],
    'kauai': ['hanalei', 'poipu']
  };
  var searchTerms = new Map();
  // 指定键值对的参数类型
  var nobleGases = new Map<int, String>();
  // Map的赋值，中括号中是Key，这里可不是数组
  nobleGases[54] = 'dart';
  //Map中的键值对是唯一的
  //同Set不同，第二次输入的Key如果存在，Value会覆盖之前的数据
  nobleGases[54] = 'xenon';
  assert(nobleGases[54] == 'xenon');
  // 检索Map是否含有某Key
  assert(nobleGases.containsKey(54));
  //删除某个键值对
  nobleGases.remove(54);
  assert(!nobleGases.containsKey(54));
  assert(!nobleGases.containsKey(54));
}

void _List() {
  var vegetables = new List();
  // 或者简单的用List来赋值
  var fruits = ['apples', 'oranges'];
  // 添加元素
  fruits.add('kiwis');
  // 添加多个元素
  fruits.addAll(['grapes', 'bananas']);
  // 获取第一个元素
  fruits.first;
  // 获取元素最后一个元素
  fruits.last;
  // 查找某个元素的索引号
  assert(fruits.indexOf('apples') == 0);
  // 删除指定位置的元素，返回删除的元素
  //  fruits.removeAt(index);
  // 删除指定元素,成功返回true，失败返回false
  fruits.remove('apples');
  // 删除最后一个元素，返回删除的元素
  fruits.removeLast();
  // 删除指定范围元素，含头不含尾，成功返回null
  //  fruits.removeRange(start, end);
  // 删除指定条件的元素，成功返回null
  fruits.removeWhere((item) => item.length > 6);
  // 删除所有的元素
  fruits.clear();
  // sort()对元素进行排序，传入一个函数作为参数，return <0表示由小到大， >0表示由大到小
  fruits.sort((a, b) => a.compareTo(b));
}

void _String() {
  // String -> int
  var one = int.parse('1');
// String -> double
  var onePointOne = double.parse('1.1');
// int -> String
  String oneAsString = 1.toString();
// double -> String 注意括号中要有小数点位数，否则报错
  String piAsString = 3.14159.toStringAsFixed(2);

  var s = 'Android Developer';
  print('A Commpany has a $s, which is good idea.' ==
      'A Commpany has a Android Developer,' + ' which is good idea.');
  print('I am a ' + '${s.toUpperCase()} is very hornor!' ==
      'I am a ' + 'ANDROID DEVELOPER is very hornor!');
}
