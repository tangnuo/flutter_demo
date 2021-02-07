//聊天页面：https://segmentfault.com/a/1190000013712300
import 'package:flutter/material.dart';
import 'package:flutter_demo/the_lws_basic_widget.dart';
import 'package:flutter_demo/the_lws_gesture.dart';
import 'package:flutter_demo/the_lws_navigation.dart';
import 'package:flutter_demo/the_lws_scrolling.dart';

//程序入口
// void main() {
//   runApp(new MaterialApp(
//     title: '首页',
//     home: new LwsSampleIndex(),
//   ));
// }

class LwsSampleIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = "LWS-Flutter";
    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new ListView(
          children: [
            ListTile(
              title: new RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    // return LwsBasicApp();
                    return LwsScaffoldApp();
                  }));
                },
                child: Text("1、Basic Widget"),
              ),
            ),
            ListTile(
              title: new RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    // return LwsBottomNavigationBarApp();
                    // return LwsTabBarApp();
                    // return LwsTabBarApp2();
                    return LwsDrawerApp();
                  }));
                },
                child: Text("2、导航控件"),
              ),
            ),
            ListTile(
              title: new RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LwsPageView();
                  }));
                },
                child: Text("3、滚动控件"),
              ),
            ),
            ListTile(
              title: new RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return GestureDetectorWidget();
                  }));
                },
                child: Text("4、手势相关"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
