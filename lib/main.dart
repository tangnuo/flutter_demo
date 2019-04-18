//聊天页面：https://segmentfault.com/a/1190000013712300
import 'package:flutter/material.dart';

//程序入口
void main() {
  runApp(new FriendlychatApp());
}

const String _name = "caowj"; //聊天帐号昵称

class FriendlychatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      //创建一个MaterialApp控件对象，其下可塞入支持Material设计语言特性的控件
      title: "Friendlychat",
      home: new Text("主体"), //主页面为用户自定义ChatScreen控件
    );
  }
}
