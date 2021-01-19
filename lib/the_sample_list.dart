import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

/// 基本List
class BasicListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = "Basic List";
    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new ListView(
          children: [
            ListTile(
              leading: new Icon(Icons.map),
              title: new Text('Map'),
            ),
            ListTile(
              leading: new Icon(Icons.photo),
              title: new Text('Album'),
            ),
            ListTile(
              leading: new Icon(Icons.phone),
              title: new Text('Phone'),
            ),
          ],
        ),
      ),
    );
  }
}

///创建一个水平list
class HorizontalListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Horizontal List';

    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new Container(
          margin: new EdgeInsets.symmetric(vertical: 20),
          height: 200,
          child: new ListView(
            scrollDirection: Axis.horizontal,
            children: [
              new Container(
                width: 160,
                color: Colors.red,
              ),
              new Container(
                width: 160.0,
                color: Colors.blue,
              ),
              new Container(
                width: 160.0,
                color: Colors.green,
              ),
              new Container(
                width: 160.0,
                color: Colors.yellow,
              ),
              new Container(
                width: 160.0,
                color: Colors.orange,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

///长列表
class LongListApp extends StatelessWidget {
  final List<String> items;

  LongListApp({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = 'Long List';

    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new ListView.builder(
          itemBuilder: (context, index) {
            return new ListTile(
              title: new Text('${items[index]}'),
            );
          },
          itemCount: items.length,
        ),
      ),
    );
  }
}
