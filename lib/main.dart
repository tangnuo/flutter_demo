//聊天页面：https://segmentfault.com/a/1190000013712300
import 'package:flutter/material.dart';
import 'package:flutter_demo/chatPage.dart';
import 'package:flutter_demo/the_lws_index.dart';
import 'package:flutter_demo/the_sample_index.dart';

//程序入口
void main() {
  runApp(new MaterialApp(
    title: '首页',
    home: new MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("主页面"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //跳转聊天页面
                  return new FriendlychatApp();
                }));
              },
              child: Text("聊天"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //跳转聊天页面
                  return new SampleIndex();
                }));
              },
              child: Text("Flutter中文网示例"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //跳转聊天页面
                  return LwsSampleIndex();
                }));
              },
              child: Text("LWS-Flutter"),
            )
          ],
        ),
      ),
    );
  }
}
